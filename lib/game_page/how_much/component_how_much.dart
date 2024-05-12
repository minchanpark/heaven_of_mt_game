import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class ComponentHowMuch extends StatefulWidget {
  final String name;
  final String image;
  final int price;
  final int index;

  const ComponentHowMuch({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.index,
  });

  @override
  State<ComponentHowMuch> createState() => _ComponentHowMuchState();
}

class _ComponentHowMuchState extends State<ComponentHowMuch> {
  late String name;
  late int index;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    final formatCurrency = NumberFormat.simpleCurrency(
        locale: "ko_KR", name: "", decimalDigits: 0);

    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: width * 0.079,
                  height: height * 0.089,
                  child: Image.asset(widget.image),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: width * 0.076),
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: width * (26 / 1283),
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFBFE),
                            fontFamily: 'DungGeunMo',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        SizedBox(width: width * 0.045),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: width * 0.094,
                              height: height * 0.066,
                              child: Image.asset('assets/images/Subtract.png'),
                            ),
                            Row(
                              children: [
                                SizedBox(width: width * (20 / 1283)),
                                Text(
                                  formatCurrency.format(widget.price),
                                  style: TextStyle(
                                      fontSize: width * (28 / 1283),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Pretendard Variable'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        ((name == '고춧가루' ||
                    name == '어묵' ||
                    name == '양배추' ||
                    name == '떡' ||
                    name == '설탕' ||
                    name == '물엿') &&
                index == 3)
            ? SizedBox(
                width: width * (143 / 1283),
                height: height * (123 / 834),
                child: Image.asset('assets/images/how_much_check.png'),
              )
            : Container(),
      ],
    );
  }
}
