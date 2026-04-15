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
        body: Column(children: [
          Text('크기 설정 관련 위젯 실습'),

          // IntrinsicWidth : 해당 컨테이너의 width가 IntrinsicWidth가 됨
          // 같은 배치 관계에서 너비가 가장 큰 위젯 너비 크기로 일괄 설정
          Container(
            color: Colors.amber,
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 150, height: 120, color: Colors.red, child: Center(child:Text('A'),)),
                  Container(width: 300, height: 120, color: Colors.blue, child: Center(child:Text('B'),)),
                  Container(width: 100, height: 120, color: Colors.green, child: Center(child:Text('C'),)),
                ],
              ),
            ),
          ),

          // IntrinsicHeight : 같은 배치 관계에서 높이가 가장 큰 위젯 높이로 일괄 설정
          Container(
            color: Colors.amber,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 100, height: 120, color: Colors.red, child: Center(child:Text('A'),)),
                  Container(width: 100, height: 50, color: Colors.blue, child: Center(child:Text('B'),)),
                  Container(width: 100, height: 120, color: Colors.green, child: Center(child:Text('C'),)),
                ],
              ),
            ),
          ),
          // ConstrainedBox : 최소/최대 범위를 제한해서 위젯 크기 설정 위젯
          ConstrainedBox( 
            constraints: BoxConstraints(
              minHeight: 100,
              maxHeight: 200,
              minWidth: 50,
              maxWidth: 100,
            ),
            child: Container(
              color: Colors.teal,
              width:500,
              height: 100,
              child:Center(child: Text('안녀엉'),),
            )
          )

        ],)
      ),
    );
  }
}