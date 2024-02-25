import 'package:flutter/material.dart';
import '../screens/detail_screen.dart'; // 디테일 스크린 임포트
import '../screens/secret_board_screen.dart'; // '비밀 게시판' 페이지를 위한 임포트

class CustomGrid extends StatelessWidget {
  final List<String> boxNames = [
    '카드 게임방', '환율 따져보고 여행가자', '날씨를 알아보고 내일\n출근 하지말자',
    '비밀 게시판', '호준', '군인',
    '홀드', '여긴 게시판', '조아방',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 70,
          mainAxisSpacing: 70,
          childAspectRatio: 1 / 1,
        ),
        itemCount: boxNames.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (boxNames[index] == '비밀 게시판') {
                // '비밀 게시판'을 선택했을 때 게시판 페이지로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecretBoardScreen(), // '비밀 게시판' 페이지로 이동
                  ),
                );
              } else {
                // 다른 항목을 선택했을 때 DetailScreen으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(name: boxNames[index]),
                  ),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 5),
              ),
              child: Center(
                child: Text(
                  boxNames[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
