import 'package:flutter/material.dart';

class PersonOnboarding extends StatelessWidget {
  PersonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_person.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "순서를 정하세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.356,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "제시된 인물 사진을 보고",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "인물의 이름을 맞춰 보세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}

class DiscoOnboarding extends StatelessWidget {
  DiscoOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_disco.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "제시된 단어를 보고, 그 단어가 들어간",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "노래를 한 소절 불러주세요.",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.395,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "앞에 나온 노래를 제외하고",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "다른 노래를 한 소절씩 불러주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.49,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "모든 팀원이 서로 다른 노래를 부르면",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "성공입니다!",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.587,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ex.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "사랑",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "너무나 많이 ‘사랑'한 죄~",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  ": FT아일랜드 - 사랑앓이",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        )
      ],
    );
  }
}

class CaptainOnboarding extends StatelessWidget {
  CaptainOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_captain.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "“우리 팀에서 가장 000한 사람",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "제시된 지문을 보고",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "팀당 한 명씩 출전할 사람을 정해주세요!",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.44,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "다음 페이지에 있는 미션을 클리어 하세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FourOnboarding extends StatelessWidget {
  FourOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
          width: width * 0.43,
          height: height * 0.806,
          child: Image.asset('assets/images/back_image.png', fit: BoxFit.fill),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_four.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "순서를 정하세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.356,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "제시된 두 글자를 보고,",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "뒤에 이어질 두 글자를 답해주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.45,
          left: width * 0.028,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ex.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "‘와이 _ _’",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    " 와이'파이'!",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ]),
        )
      ],
    );
  }
}

class WordTeleOnboarding extends StatelessWidget {
  WordTeleOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_wordTele.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "순서를 정하세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.356,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "제시된 글자로 시작하는 단어를",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "생각하세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.45,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "자신의 단어를 순서대로 공개하세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "이 때 뒤로 갈수록 그 단어의 물리적인",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "크기가 커져야 해요!",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}

class TeleStrationOnboarding extends StatelessWidget {
  TeleStrationOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
          width: width * 0.43,
          height: height * 0.806,
          child: Image.asset('assets/images/back_image.png', fit: BoxFit.fill),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_teleStration.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "인원을 짝수로 맞춰 주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.356,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "순서를 정한 후, 첫 순서를 제외한",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "사람들은 뒤돌아 주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.45,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "첫 사람은 제시어에 맞게 그림을 그린 후,",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "종이를 다음 사람에게 전달해 주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.55,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "4)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "받은 사람은 그림을 보고 답을 유추해 적은",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "후, 다음 사람에게 종이를 전달해 주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.645,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "5)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "그림 → 답 → 그림의 순서로 게임을",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "진행하고, 마지막 사람은 그림을 보고",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "답을 맞추세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}

class ChoiOnboarding extends StatelessWidget {
  ChoiOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_choi.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "제공된 초성을 보고 떠오른 단어를",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "몸으로 표현해 주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * 0.395,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "동작을 보고 정답을 맞춰 보세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MusicOnboarding extends StatelessWidget {
  MusicOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_music.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "제공된 초성을 보고, 주어진 카테고리에",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "맞는 노래를 맞춰 보세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}

class FamousLineOnboarding extends StatelessWidget {
  FamousLineOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_famous.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-5명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "영화나 드라마의 명장면 사진을 보고",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "대사를 실감 나게 연기해 주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}

class TrainOnboarding extends StatelessWidget {
  TrainOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_train.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "5-7명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * (269 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "대표주자는 사회자에게 나와 문장을",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "확인하고 외우고 자리로 돌아가 앞사람에게",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "전달해주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * (375 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "귓속말로 앞사람에게 사회자의 지시에",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "따라 들은 문장을 전달해주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * (449 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "마지막 주자는 들은 문장을 적어주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UpDownOnboarding extends StatelessWidget {
  UpDownOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/updown.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "∞",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * (269 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MC가 생각한 숫자가 무엇인지 생각해서",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "이야기 해주세요.",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * (343 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MC가 생각한 숫자보다 작으면 ‘UP’ 생각한",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "숫자보다 크면 ‘DOWN’을 외쳐주세요.",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: height * (417 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "‘UP’과 ‘DOWN’을 통해 숫자를 맞춰주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SizeUpOnboarding extends StatelessWidget {
  SizeUpOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_sizeup.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "∞",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * (269 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "MC가 지정하는 물건의 길이를 눈대중으로",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "맞춰주세요.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
        Positioned(
          top: height * (343 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "실제 길이와 가장 유사하게 맞춘 팀이 승리",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HashTagOnboarding extends StatelessWidget {
  HashTagOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_hashtag.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "4-6명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.299,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "팀 대표 한 명씩 나와주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.356,
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "제시어를 보고, 해시태그를 생각해주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: height * (353 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "돌아가며 해시태그를 말한 후 나머지",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "팀원들이 제시어를 맞추면 승리.",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}

class HowMuchOnboarding extends StatelessWidget {
  HowMuchOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox(
            width: width * 0.43,
            height: height * 0.806,
            child:
                Image.asset('assets/images/back_image.png', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(left: width * 0.028, top: height * 0.043),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.222,
                    height: height * 0.222,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/onboarding_howmuch.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 35 / 1280),
                  Column(
                    children: [
                      SizedBox(height: height * 0.019),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "권장인원:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "5-6명",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.037),
                          Text(
                            "난이도:",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "☆☆☆☆☆",
                            style: TextStyle(
                              fontFamily: 'DungGeunMo',
                              color: Colors.white,
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * (269 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "진열대 위에 놓인 상품과 가격을",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "암기해주세요.",
                    style: TextStyle(
                      fontFamily: 'DungGeunMo',
                      color: Colors.white,
                      fontSize: width * 0.0159,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height * (343 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "구매해야 할 상품을 확인해주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: height * (385 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "구매해야 할 상품의 총 금액을 적어주세요.",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: height * (427 / 834),
          left: width * 0.028,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "4)",
                style: TextStyle(
                  fontFamily: 'DungGeunMo',
                  color: Colors.white,
                  fontSize: width * 0.0159,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "최종 가격에 가장 근접하게 맞추는",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "팀이 승리",
                  style: TextStyle(
                    fontFamily: 'DungGeunMo',
                    color: Colors.white,
                    fontSize: width * 0.0159,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}
