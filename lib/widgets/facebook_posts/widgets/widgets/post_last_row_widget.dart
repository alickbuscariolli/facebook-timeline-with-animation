import 'package:flutter/material.dart';

class PostLastRowWidget extends StatelessWidget {
  const PostLastRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: const [
            Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.grey,
            ),
            SizedBox(width: 6),
            Text(
              'Like',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.chat_bubble_outline_outlined,
              color: Colors.grey,
            ),
            SizedBox(width: 6),
            Text(
              'Comment',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
