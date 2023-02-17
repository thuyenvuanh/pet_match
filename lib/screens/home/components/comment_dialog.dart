import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pet_match/components/circle_icon_button.dart';

class CommentDialog extends StatefulWidget {
  const CommentDialog({super.key});

  @override
  State<CommentDialog> createState() => _CommentDialogState();
}

class _CommentDialogState extends State<CommentDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.3),
      body: Stack(
        children: [
          Positioned.fill(
              child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
          )),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      maxLines: null,
                      textInputAction: TextInputAction.send,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        hintText: 'Leave a comment',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Hero(
                      tag: 'SendLike',
                      child: CircleIconButton(
                        icon: const Icon(Ionicons.heart_outline,
                            color: Colors.white),
                        onPress: () {},
                        color: const Color(0xFFD43C4C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
