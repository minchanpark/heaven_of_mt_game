import 'package:flutter/material.dart';
import 'package:heaven_of_mt/game_contents.dart';
import '../../card/updown_card.dart';

class UpdownTextInput extends StatefulWidget {
  final int index; // index를 클래스의 필드로 선언

  const UpdownTextInput({super.key, required this.index}); // 생성자를 통해 index를 초기화

  @override
  State<UpdownTextInput> createState() => _UpdownTextInputState();
}

class _UpdownTextInputState extends State<UpdownTextInput> {
  late final TextEditingController _updownTextController;

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
        style: const TextStyle(
          color: Color(0xffFF002E),
          fontSize: 90,
          fontWeight: FontWeight.w400,
          fontFamily: 'DungGeunMo',
        ),
      );
    } else if (text == 'Down!') {
      return Text(
        text,
        style: const TextStyle(
          color: Color(0xff00F0FF),
          fontSize: 90,
          fontWeight: FontWeight.w400,
          fontFamily: 'DungGeunMo',
        ),
      );
    } else if (text == '정답입니다!') {
      return Text(
        text,
        style: const TextStyle(
          color: Color(0xffFFFBFE),
          fontSize: 64,
          fontWeight: FontWeight.w400,
          fontFamily: 'DungGeunMo',
        ),
      );
    } else {
      return const Text(
        '예상되는 숫자를 입력한 후 ENTER를 누르세요!',
        style: TextStyle(
          color: Color(0xfffffbfe),
          fontSize: 40,
          fontWeight: FontWeight.w400,
          fontFamily: 'DungGeunMo',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String cursorText = _buildCursorText();

    return Column(
      children: [
        _updateText(explain),
        if (explain == 'Up!' || explain == 'Down!')
          SizedBox(height: 5)
        else if (explain == '정답입니다!')
          SizedBox(height: 40)
        else
          SizedBox(height: 79.31),
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
    );
  }
}
