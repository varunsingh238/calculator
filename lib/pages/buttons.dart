// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final  textColor;
  final  color;
  final buttonTapped;

  final buttonText;

  const CustomButton({
    Key? key,
    this.textColor,
    this.color,
    this.buttonTapped,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          color: const Color(0xFF292D36),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(color: Colors.white.withOpacity(0.05)),
            BoxShadow(color: Colors.black.withOpacity(0.2)),
          ]),
      child: TextButton(
        onPressed: buttonTapped,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20, color: color),
        ),
      ),
    );
  }
}
