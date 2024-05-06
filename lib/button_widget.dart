import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.width,
      required this.text});

  final VoidCallback onPressed;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 71,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFFB94F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'DungGeunMo',
            fontWeight: FontWeight.w400,
            fontSize: 42,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
