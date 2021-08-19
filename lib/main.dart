import 'package:flutter/material.dart';
import './widgets/calcbtn.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _hist = '';
  String _exp = '';
  void ac(String text) {
    setState(() {
      _hist = '';
      _exp = '';
    });
  }

  void clear(String text) {
    setState(() {
      if (_exp != '') {
        _exp = _exp.substring(0, _exp.length - 1);
      }
    });
  }

  void numClick(String text) {
    setState(() {
      _exp += text;
    });
  }

  void calculate(String text) {
    setState(() {
      if (_exp != '') {
        _hist = _exp;
        _exp = "solved";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calci",
      home: Scaffold(
        backgroundColor: const Color(0xFF283637),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: Alignment(1, 1),
              padding: EdgeInsets.only(right: 12),
              child: Text(
                _hist,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(color: Colors.white30, fontSize: 24)),
              ),
            ),
            Container(
              alignment: Alignment(1, 1),
              padding: EdgeInsets.all(12),
              child: Text(
                _exp,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(color: Colors.white, fontSize: 50)),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcBtn(
                      callback: ac,
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                      textSize: 18),
                  CalcBtn(
                      callback: clear,
                      text: 'C',
                      fillColor: 0xFF6C807F,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 24)
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcBtn(
                      callback: numClick,
                      text: '1',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '2',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '3',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: ' x ',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 24)
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcBtn(
                      callback: numClick,
                      text: '4',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '5',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '6',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '-',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 24)
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcBtn(
                      callback: numClick,
                      text: '1',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '2',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '3',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '+',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 24)
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcBtn(
                      callback: numClick,
                      text: '.',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '0',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '00',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: calculate,
                      text: '=',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 24)
                ])
          ],
        )),
      ),
    );
  }
}
