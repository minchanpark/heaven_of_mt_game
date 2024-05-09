import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heaven_of_mt/game_page/how_much/how_much_game.dart';
import 'package:heaven_of_mt/onboarding/size_up_onboarding.dart';
import 'package:url_launcher/url_launcher.dart';

import '../game_page/captain/captain_game_page.dart';
import '../game_page/disco/disco_game_page.dart';
import '../game_page/hashtag/hashtag_game_web.dart';
import '../game_page/movie/movie_game_page.dart';
import '../game_page/musictitle/category_musictitle.dart';
import '../game_page/choi/choi_game_page.dart';
import '../game_page/four/four_game_page.dart';
import '../game_page/train/train_game_web.dart';
import '../mini_onboarding.dart';
import '../game_page/person/person_game_page.dart';
import '../game_page/tele/tele_game_page.dart';
import '../game_page/telestration/telestration_game_page.dart';
import '../onboarding/how_much_game_onboarding.dart';
import '../onboarding/updown_onboarding.dart';

// 게임 이름 목록
List<String> _gameNames = <String>[
  '인물퀴즈',
  '디스코',
  '대표게임',
  '네글자퀴즈',
  '단어텔레파시',
  '텔레스트레이션',
  '액션초성게임',
  '노래초성퀴즈',
  '명대사퀴즈',
  '속삭이는 기차',
  '해시태그',
  '업다운',
  'SIZE UP!',
  '마트게임',
];

// 게임 설명 목록
List<Widget> contentList = [
  PersonOnboarding(),
  DiscoOnboarding(),
  CaptainOnboarding(),
  FourOnboarding(),
  WordTeleOnboarding(),
  TeleStrationOnboarding(),
  ChoiOnboarding(),
  MusicOnboarding(),
  FamousLineOnboarding(),
  TrainOnboarding(),
  HashTagOnboarding(),
  UpDownOnboarding(),
  SizeUpOnboarding(),
  HowMuchOnboarding(),
];

// 게임 페이지 묵룩
List<Widget> pageList = [
  const PersonGamePage(),
  const DiscoGamePage(),
  const CaptainGamePage(),
  const FourGamePage(),
  const TeleGamePage(),
  const TelestrationGamePage(),
  const ChoiGamePage(),
  const CategoryPage(),
  const MovieGamePage(),
  const TrainWebGame(),
  const HashtagWebGame(),
  const UpDownOnboardingPage(),
  const SizeUpOnBoarding2(),
  const HowMuchGameOnboarding(),
];

class HomeWeb extends StatefulWidget {
  HomeWeb({
    super.key,
  });
  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  FocusNode focusNode = FocusNode();
  FixedExtentScrollController scr = FixedExtentScrollController();
  int _selectedGame = 0;

  // 게임 선택 로직
  void selectGame() {
    switch (_selectedGame + 1) {
      case 1:
        Navigator.pushNamed(context, '/person');
        break;
      case 2:
        Navigator.pushNamed(context, '/disco');
        break;
      case 3:
        Navigator.pushNamed(context, '/captain');
        break;
      case 4:
        Navigator.pushNamed(context, '/four');
        break;
      case 5:
        Navigator.pushNamed(context, '/tele');
        break;
      case 6:
        Navigator.pushNamed(context, '/telestration');
        break;
      case 7:
        Navigator.pushNamed(context, '/choi');
        break;
      case 8:
        Navigator.pushNamed(context, '/category');
        break;
      case 9:
        Navigator.pushNamed(context, '/movie');
        break;
      case 10:
        Navigator.pushNamed(context, '/train');
        break;
      case 11:
        Navigator.pushNamed(context, '/hashtag');
        break;
      case 12:
        Navigator.pushNamed(context, '/updown');
        break;
      case 13:
        Navigator.pushNamed(context, '/sizeup');
        break;
      case 14:
        Navigator.pushNamed(context, '/howmuch');
        break;
    }
  }

  void selectGameKeyboard(int selectedGame) {
    switch (_selectedGame + 1) {
      case 1:
        Navigator.pushNamed(context, '/person');
        break;
      case 2:
        Navigator.pushNamed(context, '/disco');
        break;
      case 3:
        Navigator.pushNamed(context, '/captain');
        break;
      case 4:
        Navigator.pushNamed(context, '/four');
        break;
      case 5:
        Navigator.pushNamed(context, '/tele');
        break;
      case 6:
        Navigator.pushNamed(context, '/telestration');
        break;
      case 7:
        Navigator.pushNamed(context, '/choi');
        break;
      case 8:
        Navigator.pushNamed(context, '/category');
        break;
      case 9:
        Navigator.pushNamed(context, '/movie');
        break;
      case 10:
        Navigator.pushNamed(context, '/train');
        break;
      case 11:
        Navigator.pushNamed(context, '/hashtag');
        break;
      case 12:
        Navigator.pushNamed(context, '/updown');
        break;
      case 13:
        Navigator.pushNamed(context, '/sizeup');
        break;
      case 14:
        Navigator.pushNamed(context, '/howmuch');
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "홈화면");
  }

  bool _isHovering2 = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var fourThreeRate = height / width;

    return Scaffold(
      body: Stack(children: [
        // 배경
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // 홈 화면 구성
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height:
                  (fourThreeRate == 0.75) ? height * 0.059 : height * 0.056),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/splash');
                },
                child: Container(
                  margin: EdgeInsets.only(left: width * 0.075),
                  child: Row(
                    children: [
                      Image.asset('assets/images/title.png',
                          width: width * 0.179, height: height * 0.047),
                      Image.asset(
                        'assets/images/x.png',
                        width: width * (15 / 1283),
                        height: height * (29 / 834),
                      ),
                      Image.asset(
                        'assets/images/ㅋㅋ.png',
                        width: width * (75 / 1283),
                        height: height * (75 / 834),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),

              SizedBox(
                  width:
                      (fourThreeRate <= 0.75) ? width * 0.025 : width * 0.015),
              //여기까지 완료
              GestureDetector(
                  onTap: () async {
                    const url =
                        'https://hguhimin.notion.site/db18a79dd2bd45208f55b1ca515647b8';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: MouseRegion(
                    onHover: (event) {
                      setState(() {
                        _isHovering2 = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        _isHovering2 = false;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  _isHovering2
                                      ? const Color(0xffFF48AE)
                                      : const Color(0xffFF008E),
                                  _isHovering2
                                      ? const Color(0xffFFF5A9)
                                      : const Color(0xffFFEB50)
                                ])),
                        child: Text("팀 소개",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.black,
                              fontSize: width * 0.0125,
                            ))),
                  )),
              SizedBox(width: width * 0.075)
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.075),
            // 키보드 interaction
            child: RawKeyboardListener(
              focusNode: focusNode,
              onKey: (RawKeyEvent event) {
                if (event is RawKeyDownEvent) {
                  // 키보드 아래 화살표
                  if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                    if (_selectedGame == 13) {
                    } else {
                      setState(() {
                        _selectedGame = (_selectedGame + 1) % _gameNames.length;
                        scr.animateToItem(
                          _selectedGame,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    }
                    // 키보드 위 화살표
                  } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                    if (_selectedGame == 0) {
                    } else {
                      setState(() {
                        _selectedGame =
                            (_selectedGame - 1 + _gameNames.length) %
                                _gameNames.length;
                        scr.animateToItem(
                          _selectedGame,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    }
                    // 키보드 엔터 시 게임 화면으로 이동
                  } else if (event.logicalKey == LogicalKeyboardKey.enter ||
                      event.logicalKey == LogicalKeyboardKey.space) {
                    selectGameKeyboard(_selectedGame);
                  }
                }
              },
              child: Row(
                children: [
                  // 설명란
                  contentList[_selectedGame],
                  SizedBox(width: width * 0.063),
                  SizedBox(
                    width: width * 0.4,
                    height: height * 0.81,
                    child: CupertinoPicker(
                      // diameterRatio: 1.5,
                      diameterRatio: 500,
                      scrollController: scr,
                      // magnification: 1.22,
                      squeeze: 0.8,
                      // useMagnifier: true,
                      itemExtent: width * 0.041,
                      onSelectedItemChanged: (int selectedItem) {
                        setState(() {
                          _selectedGame = selectedItem;
                        });
                      },
                      selectionOverlay: null,
                      children:
                          // 게임 목록 선택 화면
                          List<Widget>.generate(_gameNames.length, (int index) {
                        final isSelected = (index == _selectedGame);
                        return Center(
                            child: isSelected
                                // 선택 되어있을 때 보여줄 ui
                                // 여기서 크크 게임이 선택 되었을 때만 색이 노란 색으로 바뀌도록 하기
                                // 아니면 엠겜천 게임들은 싹 빼고 크크 게임만 남기기
                                ? GestureDetector(
                                    onTap: selectGame,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            index < 8
                                                ? "assets/images/left.png"
                                                : "assets/images/left_kk.png",
                                            width: 24,
                                            height: 42),
                                        const SizedBox(width: 18),
                                        Container(
                                          width: width * 0.265,
                                          decoration: BoxDecoration(
                                              color: index < 8
                                                  ? const Color(0xffFF62D3)
                                                  : const Color(0xFFFFB202)),
                                          child: Center(
                                            child: Text(
                                              _gameNames[index],
                                              style: TextStyle(
                                                  fontFamily: 'DungGeunMo',
                                                  fontSize: width * 0.0375,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff0E193E)),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 18),
                                        Image.asset(
                                            index < 8
                                                ? "assets/images/right.png"
                                                : "assets/images/right_kk.png",
                                            width: 24,
                                            height: 42)
                                      ],
                                    ),
                                  )
                                : Text(_gameNames[index],
                                    style: TextStyle(
                                        fontFamily: 'DungGeunMo',
                                        fontSize: width * 0.03,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white.withOpacity(0.5))));
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
