import 'package:flutter/material.dart';
import 'package:spring_prac00/screen/game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "가위바위보",
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("/ro.png"),
                Image.asset("/pa.png"),
                Image.asset("/sc.png"),
              ],),
            Text('재믿는 가위 ♤ 바위보 ◈ 게임', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen()),
                  );
                }, child: Text("시작하기")),
          ],
        ),
      ),
    );
  }
}
