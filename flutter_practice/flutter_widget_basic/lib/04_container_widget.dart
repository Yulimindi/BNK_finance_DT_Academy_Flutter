import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('플러터 레이아웃 위젯 실습'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Container Widget'),
            Container(
              width:100,
              height:100,
              color:Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(left: 10, top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(width: 1, color: Colors.black)
              ),
              child: Text('100 x 100'),
            ),

            Container(
              width:400,
              height:200,
              decoration: BoxDecoration(
                border: Border.all(width:1)
              ),
              child: Image.asset('images/straw.jpg'),
            ),

            Container(
              width:400,
              height:200,
              decoration: BoxDecoration(
                border: Border.all(width:1, color:Colors.red),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/straw.jpg'),
                  fit: BoxFit.cover,
                  )
              ),
            )


          ],
        ),
      )
    );
  }
}