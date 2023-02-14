import 'package:flutter/material.dart';

import 'information.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //TODO: remove hard code
        children: const [
          Text(
            'Bé Na',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          SizedBox(height: 8),
          Text(
            'Thông tin giới thiệu',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Hello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\nHello, ....\n",
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
