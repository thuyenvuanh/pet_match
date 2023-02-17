import 'package:flutter/material.dart';

import '../../../components/information.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({
    super.key,
  });
  static const Map<String, String> pet = {
    "name": 'Golden Retriever',
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //TODO: remove hard code
        children: [
          Text(
            pet['name']!,
            style: const TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          const Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          const Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          const Information(
            icon: Icons.place_outlined,
            label: 'Cách 2km',
          ),
          const SizedBox(height: 8),
          const Text(
            'Thông tin giới thiệu',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "",
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
