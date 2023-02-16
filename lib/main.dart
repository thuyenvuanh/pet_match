import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pet_match/firebase_options.dart';

import 'screens/home.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const PetMatch());
}

class PetMatch extends StatefulWidget {
  const PetMatch({super.key});

  @override
  State<PetMatch> createState() => _PetMatchState();
}

class _PetMatchState extends State<PetMatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "PetMatch - Matching your pet",
      home: const HomeScreen(),
    );
  }
}
