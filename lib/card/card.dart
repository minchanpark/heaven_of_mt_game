import 'package:flutter/material.dart';
import '../game_contents.dart';

class GameCard extends StatelessWidget {
  final GameContents gameContents;
  final bool answer;
  final double fontSize;

  const GameCard({
    super.key,
    required this.gameContents,
    this.answer = false,
    this.fontSize = 190,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -10), // 위로 이동할 양을 조정하십시오.
        child: Text(
          !answer ? gameContents.name : gameContents.answer,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'DungGeunMo',
            color: !answer ? Colors.white : const Color(0xffFF62D3),
            fontWeight: FontWeight.w400,
            fontSize: width * 0.04,
            height: 1.286,
          ),
        ),
      ),
    );
  }
}
