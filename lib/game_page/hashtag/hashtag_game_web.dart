import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import '../../card/card.dart';
import '../../card/hashtag_card.dart';
import '../../game_contents.dart';
import '../../gameover/gameover_web.dart';
import '../../ready.dart';

class HashtagWebGame extends StatefulWidget {
  const HashtagWebGame({
    super.key,
  });

  @override
  State<HashtagWebGame> createState() => _HashtagWebGamePageState();
}

class _HashtagWebGamePageState extends State<HashtagWebGame> {
  FocusNode focusNode = FocusNode();
  int currentCardIndex = 0; // 현재 카드의 인덱스를 저장할 변수
  final CardSwiperController controller = CardSwiperController();
  List<HashtagGameCard> cards = []; // cards 변수를 초기화
  List<GameContents> randomHash = [];
  bool _isAnswered = false;
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "디스코");

    // widget.id 값에 따라 cards 변수에 값을 할당

    final hashIndices = List<int>.generate(hashtag.length, (i) => i);
    randomHash = hashIndices.map((index) => hashtag[index]).toList();
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
    cards = randomHash
        .map((gameContents) =>
            HashtagGameCard(gameContents: gameContents))
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
                        if (currentCardIndex == 3) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GameOver(
                                gameName: 'hash',
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
                                  return !_isAnswered
                                      ? const Center(
                                          child: Text("사회자에게 제시어를 확인해 주세요!",
                                              style: TextStyle(
                                                fontFamily: 'DungGeunMo',
                                                fontSize: 54,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center),
                                        )
                                      : cards[index];
                                },
                                isDisabled: true,
                                onSwipe: _onSwipe,
                                onUndo: _onUndo,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  if (currentCardIndex == 3) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const GameOver(
                                          gameName: 'hash',
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
                                  _isAnswered = false;
                                },
                                child: Image.asset(
                                    'assets/images/icon_chevron_right.png',
                                    height: width * 0.07)),
                          ],
                        ),
                      ),
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
                            _isAnswered ? '정답보기' : '문제가리기',
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              fontWeight: FontWeight.w400,
                              fontSize: width * (42 / 1283),
                              color: Colors.black,
                            ),
                          ),
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
