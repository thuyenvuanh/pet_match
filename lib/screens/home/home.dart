import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pet_match/components/circle_icon_button.dart';
import 'package:pet_match/screens/home/components/comment_dialog.dart';
import 'package:pet_match/screens/home/components/profile_image.dart';
import 'package:pet_match/screens/home/components/profile_list_view.dart';
import 'package:pet_match/screens/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  openUserCenter() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (_) => const ProfileScreen()));
  }

  openDirectMessage() {
    print('Opening Direct Messages');
  }

  nextProfile() {
    print('See next Profile');
  }

  commentProfile() {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, _, __) => const CommentDialog(),
      ),
    );
  }

  loveProfile() {
    print('Love profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
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
            top: MediaQuery.of(context).viewPadding.top,
            child: Container(
              height: 76,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleIconButton(
                    icon: const Icon(Ionicons.person_circle_outline),
                    onPress: openUserCenter,
                    color: Colors.white.withOpacity(0.4),
                    height: 42,
                    width: 42,
                  ),
                  CircleIconButton(
                    icon: const Icon(Ionicons.chatbubbles_outline),
                    onPress: openDirectMessage,
                    color: Colors.white.withOpacity(0.4),
                    height: 42,
                    width: 42,
                  ),
                ],
              ),
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
                  icon: const Icon(Ionicons.close),
                  onPress: nextProfile,
                  color: Colors.white,
                ),
                CircleIconButton(
                  icon: const Icon(Ionicons.chatbubble_outline,
                      color: Colors.white),
                  onPress: commentProfile,
                  color: const Color(0xFFF3BB6B),
                ),
                Hero(
                  tag: 'SendLike',
                  child: CircleIconButton(
                    icon:
                        const Icon(Ionicons.heart_outline, color: Colors.white),
                    onPress: () {},
                    color: const Color(0xFFD43C4C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
