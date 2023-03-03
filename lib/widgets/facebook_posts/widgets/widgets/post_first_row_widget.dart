import 'package:flutter/material.dart';

import '../../../../core/app_config.dart';

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
