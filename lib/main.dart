import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
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
