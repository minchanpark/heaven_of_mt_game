import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import '../../button_widget.dart';
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
  bool _isCounting = false; // 타이머 진행 여부
  bool _isShowing = false; // 문제 보여짐 여부
  bool _showFinal = false; // 문제 타이머 종료 여부
  bool _isAnswered = false;
  Timer countdownTimer = Timer(Duration.zero, () {});
  int _count = 10;
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

  // 문제가 보여진 후 10초 타이머 함수
  void _startCountdown() {
    if (!_isShowing) {
      countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_count > 1) {
          setState(() {
            _count--;
          });
          debugPrint(
              "_isCounting: $_isCounting, _isShowing: $_isShowing, _showFinal: $_showFinal");
        } else {
          timer.cancel();
          setState(() {
            _isShowing = false;
            _showFinal = true;
          });
          debugPrint(
              "_isCounting: $_isCounting, _isShowing: $_isShowing, _showFinal: $_showFinal");
        }
      });
    }
  }

  // 타이머 초기화
  void _resetTimer() {
    setState(() {
      countdownTimer.cancel();
      _isCounting = false;
      _isShowing = false;
      _showFinal = false;
      _count = 10;
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
                      if (_isCounting || _isShowing) {
                        return;
                      } else if (event.logicalKey ==
                          LogicalKeyboardKey.escape) {
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
                        if (currentCardIndex == 4) {
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
                      Stack(
                        children: [
                          Row(children: [
                            IconButton(
                              onPressed: () {
                                // 타이머 진행중이면 버튼 disable
                                if (_isCounting || _isShowing) {
                                  return;
                                }
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              },
                              color: Colors.white,
                              icon: const ImageIcon(
                                  AssetImage('assets/images/Exit.png')),
                              iconSize: width * 0.03,
                            ),
                          ]),
                          Center(
                            child: Text(
                              '${currentCardIndex + 1}/${cards.length}',
                              style: TextStyle(
                                fontFamily: 'DungGeunMo',
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.033,
                              ),
                            ),
                          ),
                          _isShowing
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/hourglass.png',
                                        width: 28.9, height: 30.6),
                                    const SizedBox(width: 13),
                                    Text("$_count",
                                        style: const TextStyle(
                                          fontFamily: 'DungGeunMo',
                                          fontSize: 70,
                                          color: Colors.white,
                                        )),
                                  ],
                                )
                              : const Text(' ',
                                  style: TextStyle(
                                      fontSize: 70)) // 이렇게 해도 되나 싶은...
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
                                      // 타이머 진행중이면 버튼 disable
                                      if (_isCounting || _isShowing) {
                                        return;
                                      } else if (currentCardIndex == 0) {
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
                                  return _isShowing
                                      // 문제 표시
                                      ? cards[index]
                                      : _showFinal
                                          // 문제 표시 후 10초가 흘렀을 때
                                          ? _isAnswered
                                              ? cards[index]
                                              : const Center(
                                                  child: Text("문장은 무엇일까요?",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'DungGeunMo',
                                                        fontSize: 80,
                                                        color: Colors.white,
                                                      )),
                                                )
                                          // 타이머 시작 전
                                          : const Center(
                                              child: Text(
                                                  "각 조의 첫 번째 주자는\n사회자에게 제시문을 확인해주세요!",
                                                  style: TextStyle(
                                                    fontFamily: 'DungGeunMo',
                                                    fontSize: 54,
                                                    color: Colors.white,
                                                  ),
                                                  textAlign: TextAlign.center),
                                            );
                                },
                                isDisabled: true,
                                onSwipe: _onSwipe,
                                onUndo: _onUndo,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  // 타이머 진행중이면 버튼 disable
                                  if (_isCounting || _isShowing) {
                                    return;
                                  } else if (currentCardIndex == 4) {
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
                                child: Image.asset(
                                    'assets/images/icon_chevron_right.png',
                                    height: width * 0.07)),
                          ],
                        ),
                      ),
                      _isShowing
                          ? CustomButton(
                              onPressed: () {
                                setState(() {
                                  _isShowing = false;
                                  _showFinal = true;
                                  _isAnswered = false;
                                });
                              },
                              width: 320,
                              text: '게임 시작')
                          : _showFinal
                              ? _isAnswered
                                  ? SizedBox(
                                      width: width * 0.173,
                                      height: height * 0.085)
                                  : CustomButton(
                                      onPressed: () {
                                        setState(() {
                                          _isShowing = false;
                                          _showFinal = true;
                                          _isAnswered = true;
                                        });
                                      },
                                      width: 320,
                                      text: '정답 보기')
                              : CustomButton(
                                  onPressed: () {
                                    _startCountdown();
                                    setState(() {
                                      _isShowing = true;
                                      _showFinal = false;
                                      _isAnswered = false;
                                    });
                                  },
                                  width: 320,
                                  text: '제시문 보기'),
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
      _resetTimer();
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
      _resetTimer();
    });
    return true;
  }
}
