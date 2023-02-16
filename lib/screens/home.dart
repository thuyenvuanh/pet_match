// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pet_match/components/circle_icon_button.dart';
import 'package:pet_match/components/profile_image.dart';
import 'package:pet_match/components/profile_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: ListView(
                children: const [
                  ProfileImage(),
                  ProfileListView(),
                  SizedBox(height: 80),
                ],
              ),
            ),
            Positioned(
              bottom: 24,
              left: 8,
              right: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //TODO: replace icons and implement functions
                  CircleIconButton(
                    icon: Icon(Ionicons.close),
                    onPress: () {},
                    color: Colors.white,
                  ),
                  CircleIconButton(
                    icon: Icon(Ionicons.chatbubble_outline),
                    onPress: () {},
                    color: Colors.green[100],
                  ),
                  CircleIconButton(
                    icon: Icon(Ionicons.heart_outline),
                    onPress: () {},
                    color: Colors.red[200],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
