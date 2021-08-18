import 'package:flutter/material.dart';
import './widgets/calcbtn.dart'; 


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calci",
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Humara Calci")),
        ),
        backgroundColor: const Color(0xFF28367),
        body: Center(child: CalcBtn(text:'1')),
      ),
    );
  }
}
