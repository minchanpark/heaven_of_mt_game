import 'package:flutter/material.dart';
import 'package:heaven_of_mt/game_page/updown/updown_game_page.dart';

class UpdownGamePage extends StatefulWidget {
  const UpdownGamePage({super.key});

  @override
  State<UpdownGamePage> createState() => _UpdownGamePageState();
}

class _UpdownGamePageState extends State<UpdownGamePage> {
  @override
  Widget build(BuildContext context) {
    return const UpDownWebGame();
  }
}
