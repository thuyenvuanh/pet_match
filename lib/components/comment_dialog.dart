import 'package:flutter/material.dart';

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
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Leave a comment'),
                        ),
                        TextField(
                          autofocus: true,
                          maxLength: 100,
                          decoration: InputDecoration(
                            focusColor: Colors.white,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
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
