import 'package:flutter/material.dart';

import '../widgets/facebook_posts/facebook_posts_widget.dart';
import '../widgets/facebook_stories_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              FacebookStoriesListWidget(),
              FacebookPostsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
