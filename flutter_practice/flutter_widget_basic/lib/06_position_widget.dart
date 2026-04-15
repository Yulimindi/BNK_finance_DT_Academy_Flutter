
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
          title: Text('Flutter 레이아웃 위젯'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('위치 설정 관련 위젯'),

            // Align : 자식 위젯을 부모 위젯에서 정렬시키는 위젯
            Container(
              width: double.infinity, // 기계 사이즈에 맞게 자동으로 뙇
              height: 200,
              color:Colors.amber.withValues(alpha: 0.5), // 투명도 설정
              child: Align(
                alignment: Alignment.topCenter, // 정렬값을 바꿔가면서 확인할 것
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber[900],
                  child: Center(child: Text('Align')),
                ),
              ),
            ),

            // FractionalOffset 위젯
            Container(
              width: double.infinity, // 기계 사이즈에 맞게 자동으로 뙇
              height: 200,
              color:Colors.blue.withValues(alpha: 0.5), // 투명도 설정
              child: Align(
                alignment: FractionalOffset(0.5, 0.5), // 좌측 상단 기준 0~1로 조정하는듯
                child: Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 35, 160, 66),
                  child: Center(child: Text('Align')),
                ),
              ),
            ),

            // Positioned : 부모 컨테이너의 위치값으로 배치, 반드시 Stack 위젯 하위에서 사용됨
            Container(
              width: double.infinity,
              height: 200,
              color:Colors.yellow.withValues(alpha: 0.5),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    )
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    )
                  )
                ],
              )
            )

          ],
        ),
      )
    );
  }

}