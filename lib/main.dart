import 'package:flutter/material.dart';
import './widgets/calcbtn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:math_expressions/math_expressions.dart';


void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calci",
      home: Intro(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp())));
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Text("Calci",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.blueAccent,
                        )))),
            Container(child:Image(image: AssetImage('images/main.jpg')),),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Made by Madhu",
                  style: GoogleFonts.poppins(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ))));
  }
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
    if (_exp.length == 1) {
      setState(() {
        _exp = '0';
        _hist = '';
      });
    } else {
      setState(() {
        if (_exp != '') {
          _exp = _exp.substring(0, _exp.length - 1);
        }
      });
    }
  }

  void numClick(String text) {
    setState(() {
      _exp += text;
    });
  }

  void calculate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_exp);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      if (_exp != '') {
        _hist = _exp;
        _exp = eval.toString();
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
                      text: '7',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '8',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '9',
                      fillColor: 0000000000,
                      textSize: 24),
                  CalcBtn(
                      callback: numClick,
                      text: '*',
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
                      textSize: 18),
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
