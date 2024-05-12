import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class ComponentHowMuch3 extends StatefulWidget {
  final String name;
  final String image;
  final String priceString;

  final int index;
  final int compontntWidth;
  final int componentHeight;
  final double textWidth;
  final double textHeight;
  final double subWidth;
  final double subHeight;

  const ComponentHowMuch3({
    super.key,
    required this.name,
    required this.image,
    required this.index,
    required this.compontntWidth,
    required this.componentHeight,
    required this.textWidth,
    required this.textHeight,
    required this.subWidth,
    required this.subHeight,
    required this.priceString,
  });

  @override
  State<ComponentHowMuch3> createState() => _ComponentHowMuch3State();
}

class _ComponentHowMuch3State extends State<ComponentHowMuch3> {
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

    final formatCurrency = new NumberFormat.simpleCurrency(
        locale: "ko_KR", name: "", decimalDigits: 0);

    return Stack(
      alignment: Alignment.center,
      children: [
        Stack(
          children: [
            SizedBox(
              width: width * (widget.compontntWidth / 1283),
              height: height * (widget.componentHeight / 834),
              child: Image.asset(widget.image),
            ),
            Column(
              children: [
                SizedBox(height: height * (widget.textHeight / 834)),
                Row(
                  children: [
                    SizedBox(width: width * (widget.textWidth / 1283)),
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: width * (25 / 1283),
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
                SizedBox(height: height * (widget.subHeight / 834)),
                Row(
                  children: [
                    SizedBox(width: width * (widget.subWidth / 1283)),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset(
                            'assets/images/Subtract.png',
                            width: width * (170.156 / 1283),
                            height: height * (70 / 834),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: width * (25 / 1283)),
                            Text(
                              widget.priceString,
                              style: TextStyle(
                                  fontSize: width * (26 / 1283),
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
            (name == '밥솥')
                ? Padding(
                    padding: EdgeInsets.only(left: width * (193 / 1283)),
                    child: Image.asset(
                      'assets/images/50.png',
                      width: width * (111 / 1283),
                      height: height * (73 / 834),
                    ),
                  )
                : Container(),
          ],
        ),
        ((name == '고춧가루' ||
                    name == '어묵' ||
                    name == '양배추' ||
                    name == '떡' ||
                    name == '설탕' ||
                    name == '물엿' ||
                    name == '에이스' ||
                    name == '뺴빼로' ||
                    name == '새우깡' ||
                    name == '초코비' ||
                    name == '면도기' ||
                    name == '드라이기' ||
                    name == '에어컨' ||
                    name == '공기청정기') &&
                (index == 3 || index == 7 || index == 8))
            ? SizedBox(
                width: width * (173 / 1283),
                height: height * (148 / 834),
                child: Image.asset('assets/images/how_much_check.png'),
              )
            : Container(),
      ],
    );
  }
}
