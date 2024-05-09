import 'package:flutter/material.dart';
import '../game_contents.dart';

class HashtagGameCard extends StatelessWidget {
  final GameContents gameContents;

  const HashtagGameCard({
    super.key,
    required this.gameContents,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -10), // 위로 이동할 양을 조정하십시오.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/hashtag.png', width: 80, height: 80),
            const SizedBox(width: 32),
            SizedBox(
              width: 380,
              child: Text(
                gameContents.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'DungGeunMo',
                  color:  Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 120,
                  height: 1.286,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
