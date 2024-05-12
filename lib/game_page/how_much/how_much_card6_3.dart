import 'package:flutter/material.dart';

class HowMuchCard6to3 extends StatelessWidget {
  const HowMuchCard6to3({super.key});

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
                        '에어컨',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '공기청정기',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '면도기',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '드라이기',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                    ],
                  ),
                  SizedBox(width: width * (90 / 1283)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * (82 / 834)),
                      Text(
                        '30만원',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        '30만원',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        ' 2만원',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                      SizedBox(height: height * (44 / 834)),
                      Text(
                        ' 2만원',
                        style: TextStyle(
                            fontSize: width * (33 / 1283),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DungGeunMo'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * (33 / 834)),
              Divider(
                endIndent: width * (237 / 1283),
                indent: 0,
                color: const Color.fromRGBO(0, 0, 0, 1),
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
                    '64만원',
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
