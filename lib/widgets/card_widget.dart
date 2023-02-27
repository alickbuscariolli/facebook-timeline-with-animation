import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          './assets/images/alick.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
