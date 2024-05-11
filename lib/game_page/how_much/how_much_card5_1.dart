import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HowMuchCard5to1 extends StatelessWidget {
  const HowMuchCard5to1({super.key});

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
            'assets/images/how_much_back2.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.03, top: height * 0.074),
          width: width * (704 / 1283),
          height: height * (350 / 834),
          child: Image.asset(
            'assets/images/explain2.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: width * 0.46,
          top: height * 0.4,
          child: SizedBox(
            width: width * (261 / 1283),
            height: height * (302 / 834),
            child: Image.asset(
              'assets/images/zzanggu.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
