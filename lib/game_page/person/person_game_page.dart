import 'package:flutter/material.dart';
import 'game_person.dart';

class PersonGamePage extends StatefulWidget {
  const PersonGamePage({super.key});

  @override
  State<PersonGamePage> createState() => _PersonGamePageState();
}

class _PersonGamePageState extends State<PersonGamePage> {
  @override
  Widget build(BuildContext context) {
    return const PersonWebGame();
  }
}
