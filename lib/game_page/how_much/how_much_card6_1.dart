import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HowMuchCard6to1 extends StatelessWidget {
  const HowMuchCard6to1({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          width: width * 0.734,
          height: height * 0.743,
          child: Image.asset(
            'assets/images/how_much_back.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.03, top: height * 0.074),
          width: width * (816 / 1283),
          height: height * (520 / 834),
          child: Image.asset(
            'assets/images/explain3.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: width * (576 / 1283),
          top: height * (343 / 834),
          child: SizedBox(
            width: width * (246 / 1283),
            height: height * (275 / 834),
            child: Image.asset(
              'assets/images/grandparent.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
