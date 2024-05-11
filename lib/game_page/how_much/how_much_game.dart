import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:heaven_of_mt/game_page/how_much/how_much_card5to3.dart';
import '../../../gameover/gameover_web.dart';
import '../../../ready.dart';
import 'how_much_card1.dart';
import 'how_much_card2.dart';
import 'how_much_card3.dart';
import 'how_much_card4.dart';
import 'how_much_card5.dart';
import 'how_much_card5_1.dart';
import 'how_much_card5_2.dart';
import 'how_much_card6.dart';
import 'how_much_card7.dart';

class HowMuchWebGame extends StatefulWidget {
  const HowMuchWebGame({
    super.key,
  });

  @override
  State<HowMuchWebGame> createState() => _HowMuchWebGamePageState();
}

class _HowMuchWebGamePageState extends State<HowMuchWebGame> {
  FocusNode focusNode = FocusNode();
  int currentCardIndex = 0; // 현재 카드의 인덱스를 저장할 변수
  final CardSwiperController controller = CardSwiperController();
  List howMuchCards = [
    const HowMuchCard1(),
    const HowMuchCard2(),
    const HowMuchCard3(),
    const HowMuchCard4(),
    const HowMuchcard5(),
    const HowMuchCard5to1(),
    const HowMuchcard5to3(),
    const HowMuchCard5to2(),
    const HowMuchcard6(),
    const HowMuchcard7(),
  ];

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "하우머치");
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
            child: Center(
              child: Container(
                padding: EdgeInsets.only(
                  left: width * 0.075,
                  top: height * 0.073,
                  right: width * 0.075,
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
                        if (currentCardIndex == 9) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GameOver(
                                gameName: 'howmuch',
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
                            '${currentCardIndex + 1}/${howMuchCards.length}',
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
                      Row(
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
                          Flexible(
                            child: SizedBox(
                              width: width * 0.9,
                              height: height * 0.84,
                              child: CardSwiper(
                                duration: const Duration(milliseconds: 0),
                                controller: controller,
                                cardsCount: howMuchCards.length,
                                numberOfCardsDisplayed: 1,
                                cardBuilder: (
                                  context,
                                  index,
                                  horizontalThresholdPercentage,
                                  verticalThresholdPercentage,
                                ) {
                                  currentCardIndex = index;
                                  return howMuchCards[index];
                                },
                                isDisabled: true,
                                onSwipe: _onSwipe,
                                onUndo: _onUndo,
                              ),
                            ),
                          ),

                          IconButton(
                            onPressed: () {
                              if (currentCardIndex == 9) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const GameOver(
                                      gameName: 'howmuch',
                                    ),
                                  ),
                                );
                              } else {
                                controller.swipeLeft();
                                if (currentCardIndex != 3) {
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
