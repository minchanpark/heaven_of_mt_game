import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'component_how_much2.dart';

class HowMuchcard7 extends StatelessWidget {
  const HowMuchcard7({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Expanded(
          child: SizedBox(
            width: width * (940 / 1283),
            height: height * (658 / 834),
            child: Image.asset(
              'assets/images/how_much_back.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: height * (23 / 834)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/howmuch_card.png',
                      width: width * (307 / 1283),
                      height: height * (111 / 834),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text(
                            '식품 전 품목',
                            style: TextStyle(
                              color: const Color(0xFF000000),
                              fontSize: height * (36 / 834),
                              fontFamily: 'DungGeunMo',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '50% 할인',
                                style: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: height * (36 / 834),
                                  fontFamily: 'DungGeunMo',
                                ),
                              ),
                              Text(
                                '(음료 제외)',
                                style: TextStyle(
                                  color: const Color(0xFFFF002E),
                                  fontSize: height * (24 / 834),
                                  fontFamily: 'DungGeunMo',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const ComponentHowMuch2(
                  index: 0,
                  name: '초밥',
                  image: 'assets/images/susui.png',
                  price: 2000,
                  compontntWidth: 122,
                  componentHeight: 106,
                  subHeight: 40,
                  subWidth: 93,
                  textHeight: 0,
                  textWidth: 120,
                ),
                const ComponentHowMuch2(
                  index: 0,
                  name: '튀김',
                  image: 'assets/images/fry.png',
                  price: 2000,
                  compontntWidth: 106,
                  componentHeight: 97,
                  subHeight: 37,
                  subWidth: 80,
                  textHeight: 0,
                  textWidth: 105,
                ),
                SizedBox(width: width * (22 / 1283)),
              ],
            ),
            SizedBox(height: height * (18 / 834)),
            Image.asset('assets/images/line.png'),
            SizedBox(height: height * (18 / 834)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width * (12 / 834)),
                const ComponentHowMuch2(
                  index: 0,
                  name: '떡볶이',
                  image: 'assets/images/ricecake.png',
                  price: 8000,
                  compontntWidth: 128,
                  componentHeight: 128,
                  subHeight: 45,
                  subWidth: 100,
                  textHeight: 5,
                  textWidth: 127,
                ),
                SizedBox(width: width * (42 / 834)),
                const ComponentHowMuch2(
                  index: 0,
                  name: '순대',
                  image: 'assets/images/soondae.png',
                  price: 4000,
                  compontntWidth: 116,
                  componentHeight: 116,
                  subHeight: 48,
                  subWidth: 90,
                  textHeight: 10,
                  textWidth: 117,
                ),
                SizedBox(width: width * (12 / 834)),
                const ComponentHowMuch2(
                  index: 0,
                  name: '후라이드치킨',
                  image: 'assets/images/chicken.png',
                  price: 18000,
                  compontntWidth: 150,
                  componentHeight: 103,
                  subHeight: 50,
                  subWidth: 105,
                  textHeight: 9,
                  textWidth: 123,
                ),
              ],
            ),
            SizedBox(height: height * (8 / 834)),
            Image.asset('assets/images/line.png'),
            SizedBox(height: height * (21 / 834)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * (12 / 834)),
                ComponentHowMuch2(
                  index: 0,
                  name: '족발',
                  image: 'assets/images/pigfoot.png',
                  price: 22000,
                  compontntWidth: 120,
                  componentHeight: 90,
                  subHeight: 38,
                  subWidth: 85,
                  textHeight: 0,
                  textWidth: 115,
                ),
                SizedBox(width: width * (52 / 834)),
                ComponentHowMuch2(
                  index: 0,
                  name: '보쌈',
                  image: 'assets/images/bossam.png',
                  price: 15000,
                  compontntWidth: 110,
                  componentHeight: 95,
                  subHeight: 40,
                  subWidth: 75,
                  textHeight: 0,
                  textWidth: 110,
                ),
                SizedBox(width: width * (32 / 834)),
                ComponentHowMuch2(
                  index: 0,
                  name: '양념치킨',
                  image: 'assets/images/redchicken.png',
                  price: 20000,
                  compontntWidth: 122,
                  componentHeight: 88,
                  subHeight: 40,
                  subWidth: 85,
                  textHeight: 0,
                  textWidth: 110,
                ),
              ],
            ),
            SizedBox(height: height * (13 / 834)),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                SizedBox(height: height * (10 / 834)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width * (12 / 834)),
                    ComponentHowMuch2(
                      index: 0,
                      name: '우유',
                      image: 'assets/images/milk.png',
                      price: 1000,
                      compontntWidth: 269,
                      componentHeight: 104,
                      subHeight: 40,
                      subWidth: 228,
                      textHeight: 0,
                      textWidth: 260,
                    ),
                    SizedBox(width: width * (70 / 834)),
                    ComponentHowMuch2(
                      index: 0,
                      name: '탄산',
                      image: 'assets/images/spakling.png',
                      price: 2000,
                      compontntWidth: 260,
                      componentHeight: 150,
                      subHeight: 59,
                      subWidth: 190,
                      textHeight: 20,
                      textWidth: 225,
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
