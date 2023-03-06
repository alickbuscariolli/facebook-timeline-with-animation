import 'package:flutter/material.dart';

import 'card_widget.dart';
import 'first_card_widget.dart';

class FacebookStoriesListWidget extends StatefulWidget {
  const FacebookStoriesListWidget({
    super.key,
  });

  @override
  State<FacebookStoriesListWidget> createState() =>
      _FacebookStoriesListWidgetState();
}

class _FacebookStoriesListWidgetState extends State<FacebookStoriesListWidget> {
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

  double get _getScrollOffset {
    if (_scrollCtrl.hasClients) {
      return _scrollCtrl.offset;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
