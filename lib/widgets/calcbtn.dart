import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcBtn extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final Function callback;
  final double textSize;
  const CalcBtn(
      {Key? key,
      required this.text,
      required this.fillColor,
      required this.textSize,
      required this.callback,
      this.textColor = 0xFFFFFFFF})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: SizedBox(
            height: 60,
            width: 60,
            child: ElevatedButton(
              child: Text(this.text,
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                          fontSize: textSize, color: Color(textColor)))),
              onPressed: () {
                callback(text);
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: fillColor != null
                      ? MaterialStateProperty.all<Color>(Color(fillColor))
                      : null,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ))),
            )));
  }
}
