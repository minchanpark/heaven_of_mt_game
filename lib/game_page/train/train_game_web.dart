import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'dart:math';

import '../../game_contents.dart';
import '../../card/card.dart';
import '../../gameover/gameover_web.dart';
import '../../ready.dart';

class TrainWebGame extends StatefulWidget {
  const TrainWebGame({
    super.key,
  });

  @override
  State<TrainWebGame> createState() => _TrainWebGamePageState();
}

class _TrainWebGamePageState extends State<TrainWebGame> {
  FocusNode focusNode = FocusNode();
  int currentCardIndex = 0; // 현재 카드의 인덱스를 저장할 변수
  final CardSwiperController controller = CardSwiperController();
  List<GameCard> cards = []; // cards 변수를 초기화
  List<GameContents> randomTrain = [];
  bool _isCounting = false;
  bool _isShowing = false;
  bool _showFinal = false;
  int _count = 3;
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "디스코");

    // widget.id 값에 따라 cards 변수에 값을 할당

    final trainIndices = List<int>.generate(train.length, (i) => i);
    randomTrain = trainIndices.map((index) => train[index]).toList();
  }

  bool isUndoButtonVisible = true;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _startCountdown() {
    setState(() {
     _isCounting = true;
     _count = 3;
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if(_count > 1) {
        setState(() {
          _count--;
        });
      } else {
        timer.cancel();
        setState(() {
         _isCounting = false; 
         _isShowing = true;
         _count = 10;
        });
        _showProblem();
      }
    });
  }
  void _showProblem() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if(_count > 1) {
        setState(() {
          _count--;
        });
      } else {
        timer.cancel();
        setState(() {
          _isShowing = false;
          _showFinal = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    cards = randomTrain
        .map((gameContents) =>
            GameCard(gameContents: gameContents, fontSize: width * 0.045))
        .toList();
    if (width < 1126 || height < 627) return const ReadyPage();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 25, 62, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_final.png"),
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
                        if (currentCardIndex == 2) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GameOver(
                                gameName: 'train',
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
                            '${currentCardIndex + 1}/${cards.length}',
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: const Color.fromARGB(255, 88, 71, 71),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            isUndoButtonVisible
                                ? GestureDetector(
                                    onTap: () {
                                      controller.undo();
                                    },
                                    child: Image.asset(
                                      'assets/images/icon_chevron_left.png',
                                      height: width * 0.07,
                                    ))
                                : GestureDetector(
                                    onTap: () {
                                      controller.undo();
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
                              width: width * 0.725,
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
                                  currentCardIndex = index;
                                  return _isCounting
                                  ? Text("$_count", style: const TextStyle(fontSize: 70))
                                  : _isShowing // 시작 버튼;
                                    ? cards[index]
                                    : _showFinal
                                      ? const Text("문장은 무엇일까요?", style: TextStyle(fontSize: 70))
                                      : GestureDetector(onTap: _startCountdown, child: const Text("시작", style: TextStyle(fontSize: 70)));
                                },
                                isDisabled: true,
                                onSwipe: _onSwipe,
                                onUndo: _onUndo,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (currentCardIndex == 2) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const GameOver(
                                        gameName: 'train',
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

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
