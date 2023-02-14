import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;
  static TextStyle textStyle = const TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 4),
          Text(
            label,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
