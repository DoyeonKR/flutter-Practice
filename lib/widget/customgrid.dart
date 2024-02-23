import 'package:flutter/material.dart';
import '../screens/detail_screen.dart'; // 디테일 스크린 임포트

class CustomGrid extends StatelessWidget {
  final List<String> boxNames = [
    '도연' , '경규' , '재혁',
    '상현' , '호준' , '군인',
    '홀드' , '미워' , '좋아'
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(name: boxNames[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 5),
              ),
              child: Center(
                child: Text(
                  boxNames[index], // 'boxNames[index]' 대신 boxNames[index] 사용
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
