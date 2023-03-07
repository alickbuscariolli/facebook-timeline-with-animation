import 'package:flutter/material.dart';

import '../../../../core/app_config.dart';

class PostTextWidget extends StatelessWidget {
  const PostTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppConfig.facebookPortuguesePostText);
  }
}
