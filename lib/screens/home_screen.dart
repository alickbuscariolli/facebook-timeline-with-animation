import 'package:facebook_animation/widgets/card_widget.dart';
import 'package:facebook_animation/widgets/first_card_widget.dart';
import 'package:facebook_animation/widgets/facebook_posts/widgets/post_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/facebook_posts/facebook_posts_widget.dart';
import '../widgets/facebook_stories_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _storyList = List.generate(15, (_) => null);
  late ScrollController _scrollCtrl;

  @override
  void initState() {
    super.initState();
    _scrollCtrl = ScrollController();
    _scrollCtrl.addListener(scrollListener);
  }

  // Vai ficar escutando alterações no ScrollController
  void scrollListener() {
    if (_scrollCtrl.hasClients) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _scrollCtrl.removeListener(scrollListener);
    _scrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FacebookStoriesListWidget(
                scrollCtrl: _scrollCtrl,
                storiesLength: _storyList.length,
              ),
              const FacebookPostsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
