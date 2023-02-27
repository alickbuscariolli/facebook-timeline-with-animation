import 'package:facebook_animation/core/app_config.dart';
import 'package:flutter/material.dart';

class FirstCardWidget extends StatelessWidget {
  final double offset;

  const FirstCardWidget({required this.offset, super.key});

  @override
  Widget build(BuildContext context) {
    final double addIconSize = (30 - offset).clamp(20, 30);
    return Container(
      margin: EdgeInsets.only(left: offset > 0 ? 0 : 5),
      width: (98 - offset).clamp(50, 98),
      height: (148 - offset).clamp(50, 148),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: offset > 0
            ? BorderRadius.only(
                topRight: Radius.circular((12 + offset / 10).clamp(12, 50)),
                bottomRight: Radius.circular((12 + offset / 10).clamp(12, 50)),
              )
            : BorderRadius.circular(12),
        boxShadow: [
          if (offset > 0)
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 8,
              blurRadius: 20,
              offset: const Offset(0, 7),
            )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment:
              offset > 0 ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            SizedBox(
              height: (100 - offset).clamp(30, 100),
              child: LayoutBuilder(builder: (context, constraints) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(offset),
                      child: Image.asset(
                        AppConfig.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: (constraints.maxHeight * 0.85 - offset).clamp(
                          constraints.maxHeight * 0.85 - 10,
                          constraints.maxHeight * 0.85),
                      left: constraints.maxWidth / 2 - (addIconSize / 2),
                      child: Container(
                        width: addIconSize,
                        height: addIconSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.shade900,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: (25 - offset).clamp(15, 25),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: (15 - offset).clamp(0, 15)),
            Opacity(
              opacity: (1 - offset / 20).clamp(0, 1),
              child: Text(
                'Create\nstory',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 12 - offset / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
