import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 기본 위젯 실습'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text('2. 이미지/아이콘 위젯'),
            /*
              이미지 에셋 등록 설정
              - pubspec.yaml > flutter 주석 해제 후 
              아래 images 경로 입력
              assets:
              - images/
            */
            Image.asset(
              'images/crush.jpg',
              width: 100,
              height: 100,
            ),

            Image.asset(
              'images/milk.jpg',
              width: 100, height: 100,
              fit: BoxFit.fill,
            ),

            Image.asset(
              'images/straw.jpg',
              width: 200, height: 300,
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeatX,
            ),

            Row(
              children: [
                Image.network(
                  'https://picsum.photos/id/237/200/300',
                  width: 100,
                  height: 100,
                ),

                Image.network(
                  'https://picsum.photos/id/236/200/300',
                  width: 100,
                  height: 100,
                ),
              ],
            ),

            Row(
              children: [
                Icon(
                  Icons.home,
                  size: 100,
                  color: Colors.red,
                ),
                Icon(
                  Icons.home,
                  size: 100,
                  color: Colors.red,
                ),
                Icon(
                  Icons.home,
                  size: 100,
                  color: Colors.red,
                )
              ],
            ),

            // Icon 위젯
            

          ],
        )
      )
    );
  }
}