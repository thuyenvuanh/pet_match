import 'package:dynamic_color/dynamic_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pet_match/firebase_options.dart';
import 'package:pet_match/screens/home/home.dart';
import 'package:pet_match/screens/sign_in/sign_in.dart';

import 'theme/color_schemes.g.dart';
import 'theme/custom_color.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const PetMatch());
}

class PetMatch extends StatefulWidget {
  const PetMatch({super.key});

  @override
  State<PetMatch> createState() => _PetMatchState();
}

class _PetMatchState extends State<PetMatch> {
  Widget screen = const SignInScreen();

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        setState(() {
          screen = const HomeScreen();
        });
      } else {
        screen = const SignInScreen();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;
        lightScheme = lightColorScheme;
        darkScheme = darkColorScheme;

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightScheme,
            extensions: [lightCustomColors],
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkScheme,
            extensions: [darkCustomColors],
          ),
          home: screen,
        );
      },
    );
  }
}
