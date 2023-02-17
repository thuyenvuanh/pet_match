import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  static const String _src =
      'https://images.unsplash.com/photo-1611003228941-98852ba62227?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80';
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 21,
      child: Image.network(
        _src,
        fit: BoxFit.cover,
      ),
    );
  }
}
