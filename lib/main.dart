import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // final List<String> items = [
  //   '표준 WEB 1.0/2.0', 'PC HUB', 'PC쿠팡 HUB', 'SMPAY HUB', '허브 배치키 발급', 'ARS배치키 조회', '배치키 승인', '배치키로 카드번호 조회'
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Doyeon Portfolio',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
