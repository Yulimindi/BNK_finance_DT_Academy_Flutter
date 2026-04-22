import 'package:flutter/material.dart';
import 'package:spring_client/screen/item_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Springboot + Flutter Demo",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인 화면'),),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                // 페이지를 어디로 이동할거냐
                MaterialPageRoute(builder: (context) => ItemListScreen()),
              );
            },
            // 버튼 제목
            child: Text('상품 목록 보기'),
        ),
      ),
    );
  }
}
