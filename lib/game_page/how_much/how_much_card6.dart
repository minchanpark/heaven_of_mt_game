import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'component_how_much2.dart';

class HowMuchcard6 extends StatelessWidget {
  const HowMuchcard6({super.key});

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                ComponentHowMuch2(
                  index: 0,
                  name: '전자레인지',
                  image: 'assets/images/micro.png',
                  price: 2500,
                  compontntWidth: 125,
                  componentHeight: 125,
                  subHeight: 60.12,
                  subWidth: 92,
                  textHeight: 20,
                  textWidth: 118.83,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '다리미',
                  image: 'assets/images/darimi.png',
                  price: 2000,
                  compontntWidth: 98,
                  componentHeight: 98,
                  subHeight: 45,
                  subWidth: 81,
                  textHeight: 3,
                  textWidth: 110,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '면도기',
                  image: 'assets/images/shave.png',
                  price: 2000,
                  compontntWidth: 77,
                  componentHeight: 108,
                  subHeight: 45,
                  subWidth: 70,
                  textHeight: 3,
                  textWidth: 93,
                ),
                SizedBox(),
              ],
            ),
            Image.asset('assets/images/line.png'),
            SizedBox(height: height * (30 / 834)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width * (22 / 834)),
                ComponentHowMuch2(
                  index: 0,
                  name: '밥솥',
                  image: 'assets/images/rice.png',
                  price: 2500,
                  compontntWidth: 116,
                  componentHeight: 116,
                  subHeight: 45,
                  subWidth: 100,
                  textHeight: 5,
                  textWidth: 127,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '전기포트',
                  image: 'assets/images/port.png',
                  price: 2000,
                  compontntWidth: 67,
                  componentHeight: 99,
                  subHeight: 48,
                  subWidth: 57,
                  textHeight: 10,
                  textWidth: 85,
                ),
                SizedBox(width: width * (35 / 834)),
                ComponentHowMuch2(
                  index: 0,
                  name: '드라이기',
                  image: 'assets/images/드라이기.png',
                  price: 2000,
                  compontntWidth: 111,
                  componentHeight: 91,
                  subHeight: 38,
                  subWidth: 90,
                  textHeight: 0,
                  textWidth: 123,
                ),
              ],
            ),
            SizedBox(height: height * (8 / 834)),
            Image.asset('assets/images/line.png'),
            SizedBox(height: height * (21 / 834)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ComponentHowMuch2(
                  index: 0,
                  name: '에어컨',
                  image: 'assets/images/air.png',
                  price: 2500,
                  compontntWidth: 200,
                  componentHeight: 71,
                  subHeight: 40,
                  subWidth: 160,
                  textHeight: 0,
                  textWidth: 190,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '세탁기',
                  image: 'assets/images/laundry.png',
                  price: 2000,
                  compontntWidth: 86,
                  componentHeight: 120,
                  subHeight: 50,
                  subWidth: 70,
                  textHeight: 10,
                  textWidth: 100,
                ),
              ],
            ),
            SizedBox(height: height * (13 / 834)),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                SizedBox(height: height * (10 / 834)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ComponentHowMuch2(
                      index: 0,
                      name: '토스트기',
                      image: 'assets/images/toastmachine.png',
                      price: 2000,
                      compontntWidth: 88,
                      componentHeight: 88,
                      subHeight: 38,
                      subWidth: 80,
                      textHeight: 0,
                      textWidth: 105,
                    ),
                    ComponentHowMuch2(
                      index: 0,
                      name: '공기청정기',
                      image: 'assets/images/air_clean.png',
                      price: 2000,
                      compontntWidth: 169,
                      componentHeight: 168,
                      subHeight: 75,
                      subWidth: 110,
                      textHeight: 32,
                      textWidth: 133,
                    ),
                    ComponentHowMuch2(
                      index: 0,
                      name: '선풍기',
                      image: 'assets/images/fanmachine.png',
                      price: 2000,
                      compontntWidth: 96,
                      componentHeight: 170,
                      subHeight: 80,
                      subWidth: 80,
                      textHeight: 40,
                      textWidth: 107,
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
