import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'dart:math';
import '../../game_contents.dart';
import '../../gameover/gameover_web.dart';
import '../../ready.dart';

class MovieWebGame extends StatefulWidget {
  const MovieWebGame({super.key});

  @override
  State<MovieWebGame> createState() => _MovieWebGameState();
}

class _MovieWebGameState extends State<MovieWebGame> {
  FocusNode focusNode = FocusNode();
  int currentCardIndex = 0; // 현재 카드의 인덱스를 저장할 변수
  final CardSwiperController controller = CardSwiperController();
  List<String> cards = []; // cards 변수를 초기화
  bool _isAnswered = false;
  String movieName = '';
  final random = Random();
  List<String> answer_cards = [];
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "명대사퀴즈");

    final movieIndices = List<int>.generate(movie.length, (i) => i);
    final randommovie =
        movieIndices.sublist(0, 10).map((index) => movie[index]).toList();

    cards = randommovie.map((gameContents) => gameContents.name).toList();
    answer_cards =
        randommovie.map((gameContents) => gameContents.answer).toList();
  }

  bool isUndoButtonVisible = true;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String extractName(String imagePath) {
    List<String> pathParts = imagePath.split('/');
    List<String> fileParts = pathParts[2].split('.');
    String name = fileParts[0];
    return name;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    if (width < 1126 || height < 627) return ReadyPage();
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
                      if (currentCardIndex == 9) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const GameOver(
                              gameName: 'movie',
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
                              movieName = extractName(cards[index]);
                              return !_isAnswered
                                  ? Image.asset(
                                      cards[index],
                                      fit: BoxFit.fitHeight,
                                    )
                                  : Center(
                                      child: Text(
                                        answer_cards[currentCardIndex],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'DungGeunMo',
                                            fontWeight: FontWeight.w400,
                                            fontSize: width * 0.06,
                                            color: Color(0xffFF62D3)),
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
                              if (currentCardIndex == 9) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const GameOver(
                                      gameName: 'telestration',
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
                          !_isAnswered ? '정답보기' : '문제보기',
                          style: TextStyle(
                            fontFamily: 'DungGeunMo',
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.03,
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
