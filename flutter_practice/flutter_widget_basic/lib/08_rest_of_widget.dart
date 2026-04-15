import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text('Flutter 나머지 위젯')
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Flutter 나머지 위젯 실습'),

            // Expended : 비율로 크기 설정하는 위젯 (flex 사용)
            Row(
              children: [
                Expanded(
                  flex : 1,
                  child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )),
                Expanded(
                  flex : 1,
                  child: Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 54, 244, 127),
                )),
                Expanded(
                  flex : 1,
                  child: Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 54, 152, 244),
                )),
              ],
            ),

            // Card ** 이거 예쁘네
            Card(
              elevation: 5, // 그림자 두께
              color: const Color.fromARGB(255, 108, 174, 207),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              margin : EdgeInsets.all(16),
              child: Padding(padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('제목'),
                  Text('내용'),
                ],
              ))
            ),

            // Spacer : 빈공간 추가하는 위젯
            Row(
              children: [
                Icon(Icons.html, size: 50,),
                Spacer(),
                Icon(Icons.css, size: 50,),
                Spacer(flex: 2),
                Icon(Icons.javascript, size: 50,),
              ],
            ),

            // SizedBox : 위젯의 폭과 높이를 지정해 두 위젯 사이에 여백을 만드는 위젯
            SizedBox(
              width: 300,
              height: 100,
              child: Container(
                color: Colors.pinkAccent,
              ),
            ),

            // SingleChildScrollView : 가로/세로 스크롤 위젯
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 400,
                    height: 100,
                    color: Colors.red,
                    child: Text('1'),
                  ),
                  Container(
                    width: 400,
                    height: 100,
                    color: Colors.blue,
                    child: Text('2'),
                  ),
                  Container(
                    width: 400,
                    height: 100,
                    color: Colors.green,
                    child: Text('3'),
                  ),
                ],
              )
            )

          ],
        )
      )
    );
  }
}