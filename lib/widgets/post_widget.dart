import 'package:facebook_animation/core/app_config.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        children: const [
          PostFirstRowWidget(),
          SizedBox(height: 12),
          PostTextWidget(),
          SizedBox(height: 12),
          PostSecondRowWidget(),
          Divider(),
          PostLastRowWidget(),
        ],
      ),
    );
  }
}

class PostFirstRowWidget extends StatelessWidget {
  const PostFirstRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(AppConfig.imagePath),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Flutter Dicas Bootcamp',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Álick Buscariolli',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const Spacer(),
        Icon(Icons.more_horiz, color: Colors.grey.shade800),
        const SizedBox(width: 12),
        Icon(Icons.close, color: Colors.grey.shade800),
      ],
    );
  }
}

class PostTextWidget extends StatelessWidget {
  const PostTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppConfig.facebookEnglishPostText);
  }
}

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
