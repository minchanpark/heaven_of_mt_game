import 'package:flutter/material.dart';

class HowMuchCard5to3 extends StatelessWidget {
  const HowMuchCard5to3({super.key});

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
                      SizedBox(height: height * (82 / 834)),
                      Text(
                        '초코비',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '새우깡',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '에이스',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Row(
                        children: [
                          Text(
                            '빼빼로 ',
                            style: TextStyle(
                                fontSize: width * (33 / 1283),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DungGeunMo'),
                          ),
                          Text(
                            'x2',
                            style: TextStyle(
                                fontSize: width * (33 / 1283),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DungGeunMo',
                                color: const Color(0xFFFF002E)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: width * (104 / 1283)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: height * (92 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '₩1,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                    ],
                  ),
                  SizedBox(width: width * (47 / 1283)),
                ],
              ),
              SizedBox(height: height * (33 / 834)),
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
