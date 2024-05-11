import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'component_how_much2.dart';

class HowMuchcard5to3 extends StatelessWidget {
  const HowMuchcard5to3({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: width * (940 / 1283),
          height: double.infinity,
          child: Image.asset(
            'assets/images/how_much_back.png',
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ComponentHowMuch2(
                  index: 7,
                  name: '에이스',
                  image: 'assets/images/ace.png',
                  price: 2500,
                  compontntWidth: 164,
                  componentHeight: 174,
                  subHeight: 60.12,
                  subWidth: 132,
                  textHeight: 20,
                  textWidth: 158.83,
                ),
                SizedBox(width: width * (100 / 1283)),
                const ComponentHowMuch2(
                  index: 0,
                  name: '쿠크다스',
                  image: 'assets/images/koo.png',
                  price: 2000,
                  compontntWidth: 143,
                  componentHeight: 128,
                  subHeight: 45,
                  subWidth: 119,
                  textHeight: 3,
                  textWidth: 140,
                ),
              ],
            ),
            Image.asset('assets/images/line.png'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ComponentHowMuch2(
                  index: 7,
                  name: '빼빼로',
                  image: 'assets/images/bbaebbae.png',
                  price: 2500,
                  compontntWidth: 271,
                  componentHeight: 137,
                  subHeight: 55,
                  subWidth: 210,
                  textHeight: 16,
                  textWidth: 235,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '양파링',
                  image: 'assets/images/onion.png',
                  price: 2000,
                  compontntWidth: 120,
                  componentHeight: 120,
                  subHeight: 55,
                  subWidth: 75,
                  textHeight: 16,
                  textWidth: 105,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '치토스',
                  image: 'assets/images/chitos.png',
                  price: 2000,
                  compontntWidth: 132,
                  componentHeight: 133,
                  subHeight: 60,
                  subWidth: 75,
                  textHeight: 22,
                  textWidth: 103,
                ),
              ],
            ),
            Image.asset('assets/images/line.png'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ComponentHowMuch2(
                  index: 0,
                  name: '홈런볼',
                  image: 'assets/images/homerun.png',
                  price: 2500,
                  compontntWidth: 157,
                  componentHeight: 120,
                  subHeight: 50.12,
                  subWidth: 122,
                  textHeight: 10,
                  textWidth: 148.83,
                ),
                ComponentHowMuch2(
                  index: 0,
                  name: '칙촉',
                  image: 'assets/images/chick.png',
                  price: 2000,
                  compontntWidth: 227,
                  componentHeight: 90,
                  subHeight: 40,
                  subWidth: 160,
                  textHeight: 0,
                  textWidth: 190,
                ),
              ],
            ),
            Image.asset('assets/images/line.png'),
            Column(
              children: [
                SizedBox(height: height * (10 / 834)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ComponentHowMuch2(
                      index: 7,
                      name: '새우깡',
                      image: 'assets/images/seafood.png',
                      price: 2500,
                      compontntWidth: 140,
                      componentHeight: 113,
                      subHeight: 50,
                      subWidth: 90,
                      textHeight: 10,
                      textWidth: 120,
                    ),
                    ComponentHowMuch2(
                      index: 7,
                      name: '초코비',
                      image: 'assets/images/chocobee.png',
                      price: 2000,
                      compontntWidth: 120,
                      componentHeight: 120,
                      subHeight: 55,
                      subWidth: 75,
                      textHeight: 16,
                      textWidth: 105,
                    ),
                    ComponentHowMuch2(
                      index: 0,
                      name: '포카칩',
                      image: 'assets/images/pocachip.png',
                      price: 2000,
                      compontntWidth: 132,
                      componentHeight: 132,
                      subHeight: 60,
                      subWidth: 75,
                      textHeight: 22,
                      textWidth: 103,
                    ),
                    ComponentHowMuch2(
                      index: 0,
                      name: '바나나킥',
                      image: 'assets/images/banana.png',
                      price: 2000,
                      compontntWidth: 132,
                      componentHeight: 132,
                      subHeight: 60,
                      subWidth: 75,
                      textHeight: 22,
                      textWidth: 103,
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
