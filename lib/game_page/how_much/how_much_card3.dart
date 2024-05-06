import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'component_how_much.dart';

class HowMuchCard3 extends StatelessWidget {
  const HowMuchCard3({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: width * 0.9,
          height: height * 0.8,
          child: Image.asset(
            'assets/images/how_much_back.png',
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            Column(
              children: [
                SizedBox(height: height * (12 / 834)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    ComponentHowMuch(
                        index: 3,
                        name: '된장',
                        image: 'assets/images/된장1.png',
                        price: 2500),
                    ComponentHowMuch(
                        index: 3,
                        name: '고춧가루',
                        image: 'assets/images/고춧가루1.png',
                        price: 2000),
                    ComponentHowMuch(
                        index: 3,
                        name: '고추장',
                        image: 'assets/images/고추장1.png',
                        price: 2000),
                    SizedBox(),
                  ],
                ),
                SizedBox(height: height * (6 / 834)),
              ],
            ),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                SizedBox(height: height * (12 / 834)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    ComponentHowMuch(
                        index: 3,
                        name: '어묵',
                        image: 'assets/images/어묵1.png',
                        price: 1500),
                    ComponentHowMuch(
                        index: 3,
                        name: '양배추',
                        image: 'assets/images/양배추1.png',
                        price: 1700),
                    ComponentHowMuch(
                      index: 3,
                      name: ' 떡',
                      image: 'assets/images/떡1.png',
                      price: 1000,
                    ),
                    SizedBox(),
                  ],
                ),
                SizedBox(height: height * (6 / 834)),
              ],
            ),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                SizedBox(height: height * (22 / 834)),
                Row(
                  children: [
                    SizedBox(width: width * (75 / 1283)),
                    const ComponentHowMuch(
                        index: 3,
                        name: '양파',
                        image: 'assets/images/양파1.png',
                        price: 1500),
                    SizedBox(width: width * (78 / 1283)),
                    const ComponentHowMuch(
                        index: 3,
                        name: '애호박',
                        image: 'assets/images/애호박1.png',
                        price: 2000),
                    const SizedBox(),
                  ],
                ),
                SizedBox(height: height * (16 / 834)),
              ],
            ),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                SizedBox(height: height * (12 / 834)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(),
                    ComponentHowMuch(
                        index: 3,
                        name: '설탕',
                        image: 'assets/images/설탕1.png',
                        price: 2000),
                    ComponentHowMuch(
                        index: 3,
                        name: '소금',
                        image: 'assets/images/소금1.png',
                        price: 2000),
                    ComponentHowMuch(
                        index: 3,
                        name: '물엿',
                        image: 'assets/images/물엿1.png',
                        price: 1500),
                    ComponentHowMuch(
                        index: 3,
                        name: '간장',
                        image: 'assets/images/간장1.png',
                        price: 2000),
                    SizedBox(),
                  ],
                ),
                SizedBox(height: height * (6 / 834)),
              ],
            ),
          ],
        )
      ],
    );
  }
}
