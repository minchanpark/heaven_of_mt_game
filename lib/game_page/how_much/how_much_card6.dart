import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:heaven_of_mt/game_page/how_much/component_how_much3.dart';
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
        SizedBox(
          width: width * (940 / 1283),
          height: height * (658 / 834),
          child: Image.asset(
            'assets/images/how_much_back.png',
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                ComponentHowMuch3(
                  index: 0,
                  name: '전자레인지',
                  image: 'assets/images/micro.png',
                  compontntWidth: 125,
                  componentHeight: 125,
                  subHeight: 60.12,
                  subWidth: 92,
                  textHeight: 20,
                  textWidth: 118.83,
                  priceString: '5만원',
                ),
                ComponentHowMuch3(
                  index: 0,
                  name: '다리미',
                  image: 'assets/images/darimi.png',
                  compontntWidth: 98,
                  componentHeight: 98,
                  subHeight: 45,
                  subWidth: 81,
                  textHeight: 3,
                  textWidth: 110,
                  priceString: '2만원',
                ),
                ComponentHowMuch3(
                  index: 0,
                  name: '면도기',
                  image: 'assets/images/shave.png',
                  compontntWidth: 77,
                  componentHeight: 108,
                  subHeight: 45,
                  subWidth: 70,
                  textHeight: 3,
                  textWidth: 93,
                  priceString: '2만원',
                ),
                SizedBox(),
              ],
            ),
            SizedBox(height: height * (10 / 834)),
            Image.asset('assets/images/line.png'),
            SizedBox(height: height * (20 / 834)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width * (12 / 834)),
                const ComponentHowMuch3(
                  index: 0,
                  name: '밥솥',
                  image: 'assets/images/rice.png',
                  compontntWidth: 116,
                  componentHeight: 116,
                  subHeight: 45,
                  subWidth: 80,
                  textHeight: 5,
                  textWidth: 127,
                  priceString: '10만원',
                ),
                const ComponentHowMuch3(
                  index: 0,
                  name: '전기포트',
                  image: 'assets/images/port.png',
                  compontntWidth: 67,
                  componentHeight: 99,
                  subHeight: 48,
                  subWidth: 57,
                  textHeight: 10,
                  textWidth: 85,
                  priceString: '3만원',
                ),
                //SizedBox(width: width * (35 / 834)),
                const ComponentHowMuch3(
                  index: 0,
                  name: '드라이기',
                  image: 'assets/images/드라이기.png',
                  compontntWidth: 111,
                  componentHeight: 91,
                  subHeight: 38,
                  subWidth: 90,
                  textHeight: 0,
                  textWidth: 123,
                  priceString: '2만원',
                ),
              ],
            ),
            SizedBox(height: height * (15 / 834)),
            Image.asset('assets/images/line.png'),
            SizedBox(height: height * (16 / 834)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ComponentHowMuch3(
                  index: 0,
                  name: '에어컨',
                  image: 'assets/images/air.png',
                  compontntWidth: 200,
                  componentHeight: 71,
                  subHeight: 40,
                  subWidth: 160,
                  textHeight: 0,
                  textWidth: 190,
                  priceString: '30만원',
                ),
                ComponentHowMuch3(
                  index: 0,
                  name: '세탁기',
                  image: 'assets/images/laundry.png',
                  compontntWidth: 86,
                  componentHeight: 120,
                  subHeight: 50,
                  subWidth: 70,
                  textHeight: 10,
                  textWidth: 100,
                  priceString: '40만원',
                ),
              ],
            ),
            SizedBox(height: height * (13 / 834)),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                //SizedBox(height: height * (10 / 834)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ComponentHowMuch3(
                      index: 0,
                      name: '토스트기',
                      image: 'assets/images/toastmachine.png',
                      compontntWidth: 88,
                      componentHeight: 88,
                      subHeight: 38,
                      subWidth: 80,
                      textHeight: 0,
                      textWidth: 105,
                      priceString: '2만원',
                    ),
                    ComponentHowMuch3(
                      index: 0,
                      name: '공기청정기',
                      image: 'assets/images/air_clean.png',
                      compontntWidth: 169,
                      componentHeight: 168,
                      subHeight: 75,
                      subWidth: 110,
                      textHeight: 32,
                      textWidth: 133,
                      priceString: '30만원',
                    ),
                    ComponentHowMuch3(
                      index: 0,
                      name: '선풍기',
                      image: 'assets/images/fanmachine.png',
                      compontntWidth: 96,
                      componentHeight: 170,
                      subHeight: 80,
                      subWidth: 80,
                      textHeight: 40,
                      textWidth: 107,
                      priceString: '5만5천원',
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
