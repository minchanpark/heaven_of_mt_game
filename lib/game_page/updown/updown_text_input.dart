import 'package:flutter/material.dart';
import 'package:heaven_of_mt/game_contents.dart';
import '../../card/updown_card.dart';
import 'package:lottie/lottie.dart';

class UpdownTextInput extends StatefulWidget {
  final int index; // index를 클래스의 필드로 선언

  const UpdownTextInput({super.key, required this.index}); // 생성자를 통해 index를 초기화

  @override
  State<UpdownTextInput> createState() => _UpdownTextInputState();
}

class _UpdownTextInputState extends State<UpdownTextInput>
    with TickerProviderStateMixin {
  late final TextEditingController _updownTextController;
  late final AnimationController _lottieController;
  List<UpdownGameCard> cards = []; // cards 변수를 초기화
  List<UpDownGameContents> updowncontents = [];
  late String textInput;
  late int userGuess;
  late String displayValueMin = '  '; // 초기값 설정
  late String displayValueMax = '  '; // 초기값 설정
  late String explain = '예상되는 숫자를 입력한 후 ENTER를 누르세요!'; //값을 입력하고 나올 초기값 설정

  @override
  void initState() {
    super.initState();
    // 텍스트 컨트롤러에 리스너 추가
    _updownTextController = TextEditingController();
    _lottieController = AnimationController(vsync: this);

    final updownIndices = List<int>.generate(updown.length, (i) => i);
    updowncontents = updownIndices
        .map((index) => updown[index])
        .cast<UpDownGameContents>()
        .toList();

    _updownTextController.addListener(() {
      setState(() {
        // 사용자의 입력에 따라 UI를 갱신하기 위함
      });
    });
  }

  @override
  void dispose() {
    //컨트롤러 해제
    _lottieController.dispose();
    super.dispose();
  }

  // 입력값에 따른 커서 표시를 동적으로 업데이트하기 위한 함수
  String _buildCursorText() {
    switch (_updownTextController.text.length) {
      case 0:
        return '__';
      case 1:
        return '${_updownTextController.text}_';
      case 2:
        return _updownTextController.text;
      default:
        return '__';
    }
  }

  Widget _compareText() {
    return const Text(
      '<',
      style: TextStyle(
        color: Color(0xfffffbfe),
        fontSize: 84,
        fontWeight: FontWeight.w400,
        fontFamily: 'DungGeunMo',
      ),
    );
  }

  void _resetGame() {
    // 게임 상태를 초기화하는 로직
    // 예: 사용자의 입력 필드를 초기화
    _updownTextController.clear();
    displayValueMin = '  ';
    displayValueMax = '  ';
    explain = '예상되는 숫자를 입력한 후 ENTER를 누르세요!';
  }

  @override
  void didUpdateWidget(covariant UpdownTextInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.index != oldWidget.index) {
      // index가 변경되었을 때 필요한 로직 수행
      setState(() {
        // 초기화 또는 필요한 상태 업데이트 로직을 여기에 작성하세요.
        _resetGame();
      });
    }
  }

  void updateUI(String inputValue) {
    int userGuess = int.tryParse(inputValue) ?? 0; // 입력값을 안전하게 int로 변환
    print(userGuess);
    int? targetNumber = int.tryParse(
        updowncontents[widget.index].explain1); // explain1을 int로 변환
    print(targetNumber);

    if (targetNumber != null) {
      if (userGuess > targetNumber) {
        displayValueMin = inputValue;
        explain = 'Down!';
      } else if (userGuess < targetNumber) {
        displayValueMax = inputValue;
        explain = 'Up!';
      } else if (userGuess == targetNumber) {
        //displayValueMax = inputValue;
        explain = '정답입니다!';
      } else {
        displayValueMin = '  ';
      }
    } else {
      displayValueMax = '  ';
    }

    setState(() {
      // UI 업데이트
      if (explain == '정답입니다!') {
      } else
        _updownTextController.clear();
    });
  }

  Widget _updateText(String text) {
    if (text == 'Up!') {
      return Text(
        text,
        style: TextStyle(
          color: Color(0xffFF002E),
          fontSize: 96,
          fontWeight: FontWeight.w400,
          fontFamily: 'DungGeunMo',
        ),
      );
    } else if (text == 'Down!') {
      return Text(
        text,
        style: const TextStyle(
          color: Color(0xff00F0FF),
          fontSize: 96,
          fontWeight: FontWeight.w400,
          fontFamily: 'DungGeunMo',
        ),
      );
    } else if (text == '정답입니다!') {
      return Column(
        children: [
          SizedBox(height: 30),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xffFFFBFE),
              fontSize: 64,
              fontWeight: FontWeight.w400,
              fontFamily: 'DungGeunMo',
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          const Text(
            '예상되는 숫자를 입력한 후',
            style: TextStyle(
              color: Color(0xfffffbfe),
              fontSize: 40,
              fontWeight: FontWeight.w400,
              fontFamily: 'DungGeunMo',
            ),
          ),
          const Text(
            'ENTER를 누르세요!',
            style: TextStyle(
              color: Color(0xfffffbfe),
              fontSize: 40,
              fontWeight: FontWeight.w400,
              fontFamily: 'DungGeunMo',
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String cursorText = _buildCursorText();

    return Stack(
      children: [
        Column(
          children: [
            _updateText(explain),
            if (explain == 'Up!' || explain == 'Down!')
              SizedBox(height: 5)
            else if (explain == '정답입니다!')
              SizedBox(height: 20)
            else
              SizedBox(height: 28),
            Stack(
              alignment: Alignment.center,
              children: [
                UnconstrainedBox(
                  child: ClipRRect(
                    child: SizedBox(
                      width: 643,
                      height: 205,
                      child: Image.asset(
                        'assets/images/back_image_new.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      displayValueMax,
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        letterSpacing: 14.4,
                        fontSize: 84,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DungGeunMo',
                      ),
                    ),
                    const SizedBox(width: 34),
                    _compareText(),
                    const SizedBox(width: 40),
                    Text(
                      cursorText,
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        letterSpacing: 14.4,
                        fontWeight: FontWeight.w400,
                        fontSize: 144,
                        fontFamily: 'DungGeunMo',
                      ),
                    ),
                    const SizedBox(width: 40),
                    _compareText(),
                    const SizedBox(width: 34),
                    Text(
                      displayValueMin,
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        letterSpacing: 14.4,
                        fontWeight: FontWeight.w400,
                        fontSize: 84,
                        fontFamily: 'DungGeunMo',
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.0,
                    child: TextField(
                      controller: _updownTextController,
                      onSubmitted: updateUI,
                      maxLength: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        letterSpacing: 16.0,
                        fontSize: 84,
                        color: Colors.transparent,
                        fontFamily: 'DungGeunMo',
                      ),
                      decoration: const InputDecoration(
                        hintText: '',
                        counterText: '',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        (explain == '정답입니다!')
            ? Positioned(
                left: 80,
                child:
                    Lottie.asset('assets/lottie.json', height: 600, width: 800),
              )
            : Container(),
      ],
    );
  }
}
