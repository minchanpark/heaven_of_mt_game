// ignore_for_file: unused_field

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:heaven_of_mt/game_page/hashtag/hashtag_game_web.dart';
import 'package:heaven_of_mt/game_page/size_up/size_up_game.dart';
import 'package:heaven_of_mt/game_page/train/train_game_web.dart';
import 'package:heaven_of_mt/game_page/updown/updown_game_page.dart';
import 'package:heaven_of_mt/game_page/how_much/how_much_game.dart';
import 'package:heaven_of_mt/onboarding/how_much_game_onboarding.dart';
import 'package:heaven_of_mt/onboarding/size_up_onboarding.dart';
import 'package:heaven_of_mt/onboarding/updown_onboarding.dart';
import 'package:url_launcher/url_launcher.dart';

import '../game_page/captain/captain_game_page.dart';
import '../game_page/choi/choi_game_page.dart';
import '../game_page/disco/disco_game_page.dart';
import '../game_page/four/four_game_page.dart';
import '../game_page/movie/movie_game_page.dart';
import '../game_page/musictitle/category_musictitle.dart';
import '../game_page/tele/tele_game_page.dart';
import '../game_page/telestration/telestration_game_page.dart';
import '../ready.dart';

class GameOver extends StatefulWidget {
  final String gameName;
  const GameOver({super.key, required this.gameName});

  @override
  State<GameOver> createState() => _GameOverState();
}

class _GameOverState extends State<GameOver> {
  String setNumber = '';
  @override
  void initState() {
    super.initState();
    FirebaseAnalytics.instance.setCurrentScreen(screenName: "게임오버");
  }

  double _opacity = 0.5;
  double _opacity1 = 0.5;
  bool _isMouseOver = false;
  bool _isMouseOver1 = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    if (width < 1126 || height < 627) return const ReadyPage();
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: height * 0.187),
                const Text(
                  '모든 문제를 완료했어요!',
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: height * 0.188),
                MouseRegion(
                  cursor: SystemMouseCursors.click, // 마우스 커서를 클릭 스타일로 설정
                  onEnter: (_) {
                    setState(() {
                      _isMouseOver = true;
                      _opacity = 0.0;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isMouseOver = false;
                      _opacity = 0.5;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedContainer(
                        padding: const EdgeInsets.only(bottom: 4),
                        duration:
                            const Duration(milliseconds: 300), // 애니메이션 지속 시간 조절
                        decoration: BoxDecoration(
                          color: Colors.transparent, // 배경색을 지정합니다.
                          borderRadius:
                              BorderRadius.circular(20.0), // 원하는 반지름 값으로 조절
                        ),
                        width: 360,
                        height: 64,
                        child: const Center(
                          child: Text(
                            'Play Again',
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: 35,
                        child: AnimatedOpacity(
                          duration:
                              const Duration(milliseconds: 0), // 애니메이션 지속 시간 조절
                          opacity: _opacity == 0 ? 1.0 : 0.0,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.popUntil(
                                    context, ModalRoute.withName('/home'));
                                switch (widget.gameName) {
                                  case 'person':
                                    Navigator.pushNamed(context, '/person');
                                    break;
                                  case 'disco':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DiscoGamePage()));
                                    break;
                                  case 'captain':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CaptainGamePage()));
                                    break;
                                  case 'four':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FourGamePage()));
                                    break;
                                  case 'tele':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TeleGamePage()));
                                    break;
                                  case 'telestration':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TelestrationGamePage()));
                                    break;
                                  case 'choi':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChoiGamePage()));
                                    break;
                                  case 'musictitle':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CategoryPage()));
                                    break;
                                  case 'movie':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MovieGamePage()));
                                    break;
                                  case 'train':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TrainWebGame()));
                                    break;
                                  case 'updown':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UpDownOnboardingPage()));
                                    break;
                                  case 'hash':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HashtagWebGame()));
                                    break;
                                  case 'howmuch':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HowMuchGameOnboarding()));
                                  case 'sizeup':
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SizeUpOnBoarding2()));
                                    break;
                                  default:
                                    break;
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                disabledBackgroundColor: Colors.transparent,
                                foregroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 32,
                                      height: 52,
                                      child: Image.asset(
                                          'assets/images/gameover_ㅋㅋ.png')),
                                  const SizedBox(width: 10),
                                  Container(
                                    color: const Color(0xffFFB202),
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Play Again',
                                        style: TextStyle(
                                          fontFamily: 'DungGeunMo',
                                          color: Colors.white,
                                          fontSize: 48,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.044),
                MouseRegion(
                  cursor: SystemMouseCursors.click, // 마우스 커서를 클릭 스타일로 설정
                  onEnter: (_) {
                    setState(() {
                      _isMouseOver1 = true;
                      _opacity1 = 0.0;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isMouseOver1 = false;
                      _opacity1 = 0.5;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedContainer(
                        padding: const EdgeInsets.only(bottom: 4),
                        duration:
                            const Duration(milliseconds: 300), // 애니메이션 지속 시간 조절
                        decoration: BoxDecoration(
                          color: Colors.transparent, // 배경색을 지정합니다.
                          borderRadius:
                              BorderRadius.circular(20.0), // 원하는 반지름 값으로 조절
                        ),
                        width: 360,
                        height: 64,
                        child: const Center(
                          child: Text(
                            'Go Home',
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: 71,
                        child: AnimatedOpacity(
                          duration:
                              const Duration(milliseconds: 0), // 애니메이션 지속 시간 조절
                          opacity: _opacity1 == 0 ? 1.0 : 0.0,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.popUntil(
                                    context, ModalRoute.withName('/home'));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                disabledBackgroundColor: Colors.transparent,
                                foregroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 29,
                                      height: 51,
                                      child: Image.asset(
                                          'assets/images/gameover_ㅋㅋ.png')),
                                  const SizedBox(width: 10),
                                  Container(
                                    color: const Color(0xffFFB202),
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Go Home',
                                        style: TextStyle(
                                          fontFamily: 'DungGeunMo',
                                          color: Colors.white,
                                          fontSize: 48,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://walla.my/survey/onEFdA9teaAwJGTkveRz';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    '의견보내기',
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.025,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
