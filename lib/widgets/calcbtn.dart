import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  final String text;
  const CalcBtn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: OutlineButton(child: Text(this.text),onPressed:(){})); 
  }
}
