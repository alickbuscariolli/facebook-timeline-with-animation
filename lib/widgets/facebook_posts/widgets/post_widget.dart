import 'package:flutter/material.dart';
import 'widgets/post_first_row_widget.dart';
import 'widgets/post_last_row_widget.dart';
import 'widgets/post_second_row_widget.dart';
import 'widgets/post_text_widget.dart';

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
