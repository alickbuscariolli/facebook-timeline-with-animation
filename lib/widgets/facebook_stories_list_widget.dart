import 'package:flutter/material.dart';

import 'card_widget.dart';
import 'first_card_widget.dart';

class FacebookStoriesListWidget extends StatelessWidget {
  final ScrollController scrollCtrl;
  final int storiesLength;

  const FacebookStoriesListWidget({
    required this.scrollCtrl,
    required this.storiesLength,
    super.key,
  });

  double get _getScrollOffset {
    if (scrollCtrl.hasClients) {
      return scrollCtrl.offset;
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
                controller: scrollCtrl,
                scrollDirection: Axis.horizontal,
                itemCount: storiesLength,
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
