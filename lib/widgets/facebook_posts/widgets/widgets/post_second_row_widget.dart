import 'package:flutter/material.dart';

class PostSecondRowWidget extends StatelessWidget {
  const PostSecondRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.thumb_up,
          color: Colors.blue,
        ),
        SizedBox(width: 6),
        Text(
          '984',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        Spacer(),
        Text(
          '754 comments',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
