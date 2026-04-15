import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: Text('Flutter 레이아웃 위젯'),
        ),
        body : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('배치 관련 위젯 실습'),

            // Center : 위젯을 가운데로 배치하는 위젯 (child)
            Center(
              child: Text(
                '안녕 세상',
                style: TextStyle(
                  fontSize: 16
                ),
                ),
            ),


            // Row : 위젯을 가로로 배치하는 위젯 (Children)
            Row (
              children: [
                Container(
                  width: 100,
                  height: 30,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 30,
                  color: Colors.green,
                ),
              ],
            ),

            // Column : 위젯을 세로로 배치하는 위젯
            Column(
              children: [
                Container(
                  width: 50,
                  height: 30,
                  color: Colors.amber,
                ),
                Container(
                  width: 50,
                  height: 30,
                  color: Colors.blue.shade600,
                )
              ],
            ),

            // Row/Column 응용
            Row(
              children: [
                Column(
                  children: [
                    Text('밀크티'),
                    Image.asset('images/milk.jpg'),
                  ],
                ),
                Column(
                  children: [
                    Text('화이트'),
                    Image.asset('images/white.jpg'),
                  ],
                ),
                Column(
                  children: [
                    Text('딸기'),
                    Image.asset('images/straw.jpg'),
                  ],
                )
              ],
            ),

            Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Row의 기본 정렬 방향은 가로, 따라서 mainAxis는 가로방향
                crossAxisAlignment: CrossAxisAlignment.stretch, // Row의 기본 정렬 방향은 가로, 따라서 crossAxis는 세로방향
                children: [
                  Container(
                    width : 100,
                    height: 50,
                    color: Colors.pink
                  ),
                  Container(
                    width : 100,
                    height: 50,
                    color: Colors.pink[900]
                  ),
                  Container(
                    width : 100,
                    height: 50,
                    color: Colors.pink[700]
                  ),
                ],
              ),
            ),

            // Stack : 위젯을 겹쳐서 배치하는 위젯
            Stack(
              alignment: Alignment.bottomLeft, // 다양한 정렬값으로 확인할 것
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),

                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Text(
                  '위젯 겹치기'
                ),
              ],
            ),

            // Indexed Stack : 위젯을 겹쳐서 배치하고 인덱스로 화면 전환
            IndexedStack(
              index: 2,
              children: [
                Text('첫번째 텍스트 위젯', style: TextStyle(fontSize: 15)),
                Text('두번째 텍스트 위젯', style: TextStyle(fontSize: 15)),
                Text('세번째 텍스트 위젯', style: TextStyle(fontSize: 15)),
              ],
            ),

          ],
        ),
      )
    );
  }
}