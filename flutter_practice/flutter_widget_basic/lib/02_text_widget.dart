import 'package:flutter/material.dart';
void main() {
  // 시작 함수
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 이게 최상위 껍데기
      home: Scaffold( // 화면 구조
        appBar: AppBar(
          title: Text("Flutter 기본 위젯 실습"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. 텍스트 관련 위젯"),

            // 일반 텍스트 위젯
            Text(
              'Hello World',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red
              )
            ),

            Text(
              '동해물과 백두산이 마르고 닳도록 하나님이 보우하사 우리나라 만쉐 무우우우우우우우궁화',
              style: TextStyle(
                fontSize: 18
              ),
              overflow: TextOverflow.ellipsis,
            ),

            // 텍스트 스타일 위젯
            Text.rich(
              TextSpan(
                text: 'HE',
                children: [
                  TextSpan(
                    text : 'LLO',
                    style: TextStyle(color: Colors.red)
                  ),
                  TextSpan(
                    text : 'WOR',
                    style: TextStyle(color: Colors.blue)
                  ),
                  TextSpan(
                    text : 'LD',
                    style: TextStyle(color: Colors.green)
                  )
                ]
              )
            ),


            Text("1. 텍스트 스타일 위젯"),
          ],
        ),
      ) 
    ); 
  }
  
}