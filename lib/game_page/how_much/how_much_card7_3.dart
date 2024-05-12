import 'package:flutter/material.dart';

class HowMuchCard7to3 extends StatelessWidget {
  const HowMuchCard7to3({super.key});

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
                      SizedBox(height: height * (60 / 834)),
                      Text(
                        '양념치킨',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '후라이드치킨',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '모듬초밥',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '족발',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Row(
                        children: [
                          Text(
                            '콜라',
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
                      SizedBox(height: height * (12 / 834)),
                      Row(
                        children: [
                          Text(
                            '사이다',
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
                  SizedBox(width: width * (34 / 1283)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: height * (60 / 834)),
                      Text(
                        '₩10,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩9,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩10,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩11,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩4,000',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (12 / 834)),
                      Text(
                        '₩4,000',
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
                  SizedBox(width: width * (168 / 1283)),
                  Text(
                    '₩48,000',
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
