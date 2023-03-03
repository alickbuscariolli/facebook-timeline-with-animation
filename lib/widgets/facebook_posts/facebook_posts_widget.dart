import 'package:flutter/material.dart';

import 'widgets/post_widget.dart';

class FacebookPostsWidget extends StatelessWidget {
  const FacebookPostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        20,
        (index) => Column(
          children: [
            Divider(
              color: Colors.grey.shade400,
              height: 20,
              thickness: 10,
            ),
            const PostWidget(),
          ],
        ),
      ),
    );
  }
}
