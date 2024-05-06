import 'package:flutter/material.dart';

import 'size_up_web_game.dart';

class SizeupGamePage extends StatefulWidget {
  const SizeupGamePage({
    super.key,
  });

  @override
  State<SizeupGamePage> createState() => _SizeupGamePageState();
}

class _SizeupGamePageState extends State<SizeupGamePage> {
  @override
  Widget build(BuildContext context) {
    return const SizeUpWebGame();
  }
}
