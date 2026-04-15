import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 제스처 위젯'),
        ),
        body : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('제스처 위젯 실습'),
            // 텍스트 버튼
            TextButton(
            onPressed: (){
              print('TextButton 클릭');
              AlertDialog(
                title: Text('확인'),
                content: Text('버튼')
              );
            },
            child: Text('텍스트 버튼')
            ),

            // Outlined 버튼
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton click');
              },
              child: Text("Outlined Button")
            ),

            // Elevated 버튼
            ElevatedButton(
              onPressed: () {
                print('elevated button click');
              },
              child: Text('Elevated button')
            ),

            IconButton(
              onPressed: () {
                print('Icon Button');
              },
              icon: Icon(Icons.thumb_down)
            ),
            
            // GestureDetector : 제스처 감지하는 위젯
            GestureDetector(
              onTap: () {print('톡');},
              onDoubleTap: () {print('토독');},
              onLongPress: () {print('꾸우우욱');},
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
            ),
          ],
        ),
        // floatingActionButton : Scaffold의 위젯 속성, 오른쪽 하단 버튼
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('floatactionbutton 클릭');
          },
          child: Icon(Icons.add)
        ),
      ),
    );
  }
}