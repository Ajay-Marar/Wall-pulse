import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customappbar extends StatelessWidget {
  String word1;

  customappbar({super.key, required this.word1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: word1,
              style: const TextStyle(
                color: Colors.orangeAccent,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
