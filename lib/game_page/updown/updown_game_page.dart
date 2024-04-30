import 'dart:ui';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:heaven_of_mt/card/updown_card.dart';
import '../../game_contents.dart';
import '../../gameover/gameover_web.dart';
import '../../ready.dart';
import 'updown_text_input.dart';

class UpDownWebGame extends StatefulWidget {
  const UpDownWebGame({
    super.key,
  });

  @override
  State<UpDownWebGame> createState() => _TrainWebGamePageState();
}

class _TrainWebGamePageState extends State<UpDownWebGame> {
  FocusNode focusNode = FocusNode();
  int currentCardIndex = 0; // 현재 카드의 인덱스를 저장할 변수
  final CardSwiperController controller = CardSwiperController();
  List<UpdownGameCard> cards = []; // cards 변수를 초기화
  List<UpDownGameContents> updowncontents = [];
  final TextEditingController _updownTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "업다운");

    // widget.id 값에 따라 cards 변수에 값을 할당

    final updownIndices = List<int>.generate(updown.length, (i) => i);
    updowncontents = updownIndices
        .map((index) => updown[index])
        .cast<UpDownGameContents>()
        .toList();
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

    cards = updowncontents
        .map((updowngameContents) => UpdownGameCard(
            updowngameContents: updowngameContents, fontSize: width * 0.045))
        .toList();
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
            child: Center(
              child: Container(
                padding: EdgeInsets.only(
                  left: width * 0.055,
                  top: height * 0.068,
                  right: width * 0.055,
                ),
                child: RawKeyboardListener(
                  focusNode: focusNode,
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent) {
                      if (event.logicalKey == LogicalKeyboardKey.escape) {
                        Navigator.of(context).pop();
                      } else if (event.logicalKey ==
                          LogicalKeyboardKey.arrowLeft) {
                        controller.undo();
                        if (currentCardIndex == 0) {
                          setState(() {
                            isUndoButtonVisible = true;
                          });
                        }
                      } else if (event.logicalKey ==
                          LogicalKeyboardKey.arrowRight) {
                        if (currentCardIndex == 6) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GameOver(
                                gameName: 'updown',
                              ),
                            ),
                          );
                        } else {
                          controller.swipeLeft();
                          if (currentCardIndex != 6) {
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
                        mainAxisAlignment: MainAxisAlignment.start,
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
                              fontSize: width * 0.033,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(width: width * 0.039),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            isUndoButtonVisible
                                ? IconButton(
                                    onPressed: controller.undo,
                                    color: Colors.transparent,
                                    icon: const ImageIcon(
                                      AssetImage(
                                          'assets/images/icon_chevron_left.png'),
                                    ),
                                    iconSize: width * 0.07,
                                  )
                                : IconButton(
                                    onPressed: () {
                                      controller.undo();
                                      if (currentCardIndex == 0) {
                                        setState(() {
                                          isUndoButtonVisible = true;
                                        });
                                      }
                                    },
                                    color: Colors.transparent,
                                    icon: const ImageIcon(
                                      AssetImage(
                                          'assets/images/icon_chevron_left_white.png'),
                                    ),
                                    iconSize: width * 0.07,
                                  ),
                            //게임을 보여주는 부분
                            Expanded(
                              child: SizedBox(
                                width: double.maxFinite,
                                height: height * 0.64,
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
                                    return ((index == 4) || (index == 6))
                                        ? UpdownTextInput(index: index)
                                        : cards[index];
                                  },
                                  isDisabled: true,
                                  onSwipe: _onSwipe,
                                  onUndo: _onUndo,
                                ),
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                if (currentCardIndex == 6) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const GameOver(
                                        gameName: 'updown',
                                      ),
                                    ),
                                  );
                                } else {
                                  controller.swipeLeft();
                                  if (currentCardIndex != 6) {
                                    setState(() {
                                      isUndoButtonVisible = false;
                                    });
                                  }
                                }
                              },
                              color: Colors.transparent,
                              icon: const ImageIcon(
                                AssetImage(
                                    'assets/images/icon_chevron_right.png'),
                              ),
                              iconSize: width * 0.07,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.1)
                    ],
                  ),
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
      _updownTextController.clear();
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
