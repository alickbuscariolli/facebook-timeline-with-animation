import 'package:facebook_animation/widgets/card_widget.dart';
import 'package:facebook_animation/widgets/first_card_widget.dart';
import 'package:facebook_animation/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _storyList = List.generate(15, (_) => null);
  final _scrollCtrl = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollCtrl.addListener(scrollListener);
  }

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

  double get _getScrollOffset {
    if (_scrollCtrl.hasClients) {
      return _scrollCtrl.offset;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 32),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      controller: _scrollCtrl,
                      scrollDirection: Axis.horizontal,
                      itemCount: _storyList.length,
                      itemBuilder: (_, int index) {
                        return index == 0
                            ? Container(
                                margin: const EdgeInsets.only(left: 5),
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              )
                            : const CardWidget();
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    child: FirstCardWidget(
                      offset: _getScrollOffset,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ...List.generate(
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
            ],
          ),
        ),
      ),
    );
  }
}
