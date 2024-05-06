import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HowMuchCard4 extends StatelessWidget {
  const HowMuchCard4({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/images/how_much_bil.png'),
        Padding(
          padding: EdgeInsets.only(left: width * (243 / 1283)),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * (32 / 834)),
                      Text(
                        '떡',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '어묵',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '양배추',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '설탕',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '고춧가루',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '물엿',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                    ],
                  ),
                  SizedBox(width: width * (124 / 1283)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: height * (32 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                endIndent: width * (237 / 1283),
                indent: 0,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              Row(
                children: [
                  Text(
                    '총합',
                    style: TextStyle(
                        fontSize: width * (33 / 1283),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DungGeunMo'),
                  ),
                  SizedBox(width: width * (190 / 1283)),
                  Text(
                    '₩9,700',
                    style: TextStyle(
                        fontSize: width * (33 / 1283),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DungGeunMo'),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
