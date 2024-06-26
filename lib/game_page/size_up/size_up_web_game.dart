import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'dart:math';
import '../../../game_contents.dart';
import '../../../gameover/gameover_web.dart';
import '../../../ready.dart';

class SizeUpWebGame extends StatefulWidget {
  const SizeUpWebGame({super.key});

  @override
  State<SizeUpWebGame> createState() => _SizeUpWebGameState();
}

class _SizeUpWebGameState extends State<SizeUpWebGame> {
  FocusNode focusNode = FocusNode();
  int currentCardIndex = 0; // 현재 카드의 인덱스를 저장할 변수
  final CardSwiperController controller = CardSwiperController();
  List<String> cards = []; // cards 변수를 초기화
  bool _isAnswered = false;
  //String movieName = '';
  final random = Random();
  List<String> answer_cards = [];
  List<String> explain_cards = [];
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "명대사퀴즈");

    final sizeupIndices = List<int>.generate(sizeup.length, (i) => i);
    final randomSizeup =
        sizeupIndices.sublist(0, 3).map((index) => sizeup[index]).toList();

    cards = randomSizeup.map((gameContents) => gameContents.name).toList();
    answer_cards =
        randomSizeup.map((gameContents) => gameContents.answer).toList();
    explain_cards =
        randomSizeup.map((gameContents) => gameContents.explain).toList();
  }

  bool isUndoButtonVisible = true;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    if (width < 1126 || height < 627) return const ReadyPage();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 25, 62, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/back.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(
                left: width * 0.075,
                top: height * 0.071,
                right: width * 0.075,
              ),
              child: RawKeyboardListener(
                focusNode: focusNode,
                onKey: (RawKeyEvent event) {
                  if (event is RawKeyDownEvent) {
                    if (event.logicalKey == LogicalKeyboardKey.escape) {
                      Navigator.of(context).pop();
                    } else if (event.logicalKey == LogicalKeyboardKey.space ||
                        event.logicalKey == LogicalKeyboardKey.enter) {
                      setState(() {
                        _isAnswered = !_isAnswered;
                      });
                    } else if (event.logicalKey ==
                        LogicalKeyboardKey.arrowLeft) {
                      controller.undo();
                      _isAnswered = false;
                      if (currentCardIndex == 0) {
                        setState(() {
                          isUndoButtonVisible = true;
                        });
                      }
                    } else if (event.logicalKey ==
                        LogicalKeyboardKey.arrowRight) {
                      _isAnswered = false;
                      if (currentCardIndex == 2) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const GameOver(
                              gameName: 'sizeup',
                            ),
                          ),
                        );
                      } else {
                        controller.swipeLeft();
                        if (currentCardIndex != 2) {
                          setState(() {
                            isUndoButtonVisible = false;
                          });
                        }
                      }
                    }
                  }
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.white,
                          icon: const ImageIcon(
                              AssetImage('assets/images/Exit.png')),
                          iconSize: width * 0.03,
                        ),
                        const Spacer(),
                        Text(
                          '${currentCardIndex + 1}/${cards.length}',
                          style: TextStyle(
                            fontFamily: 'DungGeunMo',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.03,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(width: width * 0.039),
                      ],
                    ),
                    SizedBox(height: height * (30 / 834)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        isUndoButtonVisible
                            ? GestureDetector(
                                onTap: () {
                                  controller.undo();
                                  _isAnswered = false;
                                },
                                child: Image.asset(
                                  'assets/images/icon_chevron_left.png',
                                  height: width * 0.07,
                                ))
                            : GestureDetector(
                                onTap: () {
                                  controller.undo();
                                  _isAnswered = false;
                                  if (currentCardIndex == 0) {
                                    setState(() {
                                      isUndoButtonVisible = true;
                                    });
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/icon_chevron_left_white.png',
                                  height: width * 0.07,
                                )),
                        SizedBox(
                          width: width * 0.7, // 최대 가로 크기를 설정할 수도 있습니다.
                          height: height * 0.67, // 최대 세로 크기를 설정할 수도 있습니다
                          child: CardSwiper(
                            duration: const Duration(milliseconds: 0),
                            controller: controller,
                            cardsCount: cards.length,
                            numberOfCardsDisplayed: 1,
                            cardBuilder: (
                              context,
                              index,
                              horizontalThresholdPercentage,
                              verticalThresholdPercentage,
                            ) {
                              currentCardIndex = index;

                              return (index == 2)
                                  ? !_isAnswered
                                      ? Center(
                                          child: Text(
                                            answer_cards[currentCardIndex],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'DungGeunMo',
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * (65 / 1283),
                                                color: const Color(0xFFFFFFFF)),
                                          ),
                                        )
                                      : Column(
                                          children: [
                                            SizedBox(
                                                height: height * (59 / 834)),
                                            Image.asset(
                                              cards[index],
                                              width: width * (360 / 1283),
                                              height: height * (240 / 834),
                                            ),
                                            SizedBox(
                                                height: height * (50 / 834)),
                                            Text(
                                              explain_cards[index],
                                              style: TextStyle(
                                                fontFamily: 'DungGeunMo',
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * 0.04,
                                                color: const Color(0xFFFFFFFF),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )
                                  : !_isAnswered
                                      ? Column(
                                          children: [
                                            Image.asset(
                                              cards[index],
                                              width: width * (268 / 1283),
                                              height: height * (294 / 834),
                                            ),
                                            Text(
                                              explain_cards[index],
                                              style: TextStyle(
                                                fontFamily: 'DungGeunMo',
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * 0.04,
                                                color: const Color(0xFFFFFFFF),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )
                                      : Center(
                                          child: Text(
                                            answer_cards[currentCardIndex],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'DungGeunMo',
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * 0.09,
                                                color: const Color(0xFFFFFFFF)),
                                          ),
                                        );
                            },
                            isDisabled: true,
                            onSwipe: _onSwipe,
                            onUndo: _onUndo,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              if (currentCardIndex == 2) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const GameOver(
                                      gameName: 'sizeup',
                                    ),
                                  ),
                                );
                              } else {
                                controller.swipeLeft();
                                if (currentCardIndex != 2) {
                                  setState(() {
                                    isUndoButtonVisible = false;
                                  });
                                }
                              }
                              _isAnswered = false;
                            },
                            child: Image.asset(
                              'assets/images/icon_chevron_right.png',
                              height: width * 0.07,
                            ))
                      ],
                    ),
                    // SizedBox(height: height * 0.038),
                    SizedBox(
                      width: width * (260 / 1283),
                      height: height * (71 / 834),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isAnswered = !_isAnswered;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFB94F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: Text(
                          !_isAnswered ? '정답보기' : '문제보기',
                          style: TextStyle(
                            fontFamily: 'DungGeunMo',
                            fontWeight: FontWeight.w400,
                            fontSize: width * (42 / 1283),
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    setState(() {
      currentCardIndex = currentIndex ?? 0; // currentIndex가 null인 경우 기본값 0으로 설정
    });

    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    setState(() {
      currentCardIndex = currentIndex; // currentIndex가 null인 경우 기본값 0으로 설정
    });
    return true;
  }
}
