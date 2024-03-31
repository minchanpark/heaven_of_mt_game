import 'package:flutter/material.dart';
import '../game_contents.dart';

class UpdownGameCard extends StatelessWidget {
  final UpDownGameContents updowngameContents;
  final double fontSize;

  const UpdownGameCard({
    super.key,
    required this.updowngameContents,
    this.fontSize = 190,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -10), // 위로 이동할 양을 조정하십시오.
        child: Column(
          children: [
            Text(
              updowngameContents.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'DungGeunMo',
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: fontSize,
                height: 1.286,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  updowngameContents.explain1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                    height: 1.286,
                  ),
                ),
                Text(
                  updowngameContents.explain2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                    height: 1.286,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
