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
  bool _isCounting = false; // 타이머 진행 여부
  bool _isShowing = false; // 문제 보여짐 여부
  bool _showFinal = false; // 문제 타이머 종료 여부
  bool _isAnswered = false;
  late Timer countdownTimer;
  late Timer problemTimer;
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

  // 문제 보여주기 전 3초 타이머 함수
  void _startCountdown() {
    setState(() {
      _isCounting = true;
      _count = 3;
    });
    debugPrint(
        "_isCounting: $_isCounting, _isShowing: $_isShowing, _showFinal: $_showFinal");
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_count > 1) {
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
        debugPrint(
            "_isCounting: $_isCounting, _isShowing: $_isShowing, _showFinal: $_showFinal");
        _showProblem();
      }
    });
  }

  // 문제가 보여진 후 10초 타이머 함수
  void _showProblem() {
    problemTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
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

  // 타이머 초기화
  void _resetTimer() {
    setState(() {
      countdownTimer.cancel();
      problemTimer.cancel();
      _isCounting = false;
      _isShowing = false;
      _showFinal = false;
      _count = 3;
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
                              // 타이머 진행중이면 버튼 disable
                              if (_isCounting || _isShowing) {
                                return;
                              }
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
                          _isShowing
                              ? SizedBox(
                                  width: width * 0.039,
                                  child: Text("$_count",
                                      style: const TextStyle(
                                        fontFamily: 'DungGeunMo',
                                        fontSize: 50,
                                        color: Colors.white,
                                      )),
                                )
                              : SizedBox(width: width * 0.039)
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
                                  return _isCounting
                                      // 타이머 진행 중 초 표시
                                      ? Center(
                                          child: Text("$_count",
                                              style: const TextStyle(
                                                fontFamily: 'DungGeunMo',
                                                fontSize: 80,
                                                color: Colors.white,
                                              )),
                                        )
                                      : _isShowing
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
                                              : Center(
                                                  child: GestureDetector(
                                                      onTap: _startCountdown,
                                                      child: const Text("시작",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'DungGeunMo',
                                                            fontSize: 80,
                                                            color: Colors.white,
                                                          ))),
                                                );
                                },
                                isDisabled: true,
                                onSwipe: _onSwipe,
                                onUndo: _onUndo,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // 타이머 진행중이면 버튼 disable
                                if (_isCounting || _isShowing) {
                                  return;
                                } else if (currentCardIndex == 2) {
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
                      _showFinal
                          ? SizedBox(
                              width: width * 0.173,
                              height: height * 0.085,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isAnswered = !_isAnswered;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _isAnswered
                                      ? Colors.white
                                      : const Color(0xffFF62D3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                child: Text(
                                  _isAnswered ? '돌아가기' : '문제보기',
                                  style: const TextStyle(
                                    fontFamily: 'DungGeunMo',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 50,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(
                              width: width * 0.173, height: height * 0.085),
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

  Widget countOrButton() {
    if (_isShowing && !_showFinal) {
      // 카운트 숫자 표시
      return Visibility(
          visible: _isShowing,
          child: Text("$_count",
              style: const TextStyle(
                fontFamily: 'DungGeunMo',
                fontSize: 80,
                color: Colors.white,
              )));
    } else if (!_isShowing && _showFinal) {
      // 문제보기 버튼
      return Visibility(
        visible: _showFinal,
        child: SizedBox(
          width: 300,
          height: 85,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _isAnswered = !_isAnswered;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  _isAnswered ? Colors.white : const Color(0xffFF62D3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(
              _isAnswered ? '돌아가기' : '문제보기',
              style: const TextStyle(
                fontFamily: 'DungGeunMo',
                fontWeight: FontWeight.w400,
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ),
        ),
      );
    }
    return const SizedBox();
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
