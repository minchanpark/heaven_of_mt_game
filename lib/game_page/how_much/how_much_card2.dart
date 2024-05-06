import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HowMuchCard2 extends StatelessWidget {
  const HowMuchCard2({super.key});

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
          width: width * 0.474,
          height: height * 0.65,
          child: Image.asset(
            'assets/images/explain.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: width * 0.429,
          top: height * 0.31,
          child: SizedBox(
            width: width * 0.234,
            height: height * 0.426,
            child: Image.asset(
              'assets/images/how_much_people.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
