import 'package:flutter/material.dart';
import 'package:spring_prac00/screen/end_screen.dart';
import 'dart:math';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {




  String states = "qu";
  String newSt = "qu";
  String result = "";
  int myScore = 0;
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("게임하자"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("안녕", style: TextStyle(fontSize: 30),),
          Text("게임을해보자", style: TextStyle(fontSize: 30),),
          Text("뭘 내고싶어?", style: TextStyle(fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                      states = "sc";
                  });
                },
                child: Column(
                  children: [
                    Image.asset("/sc.png"),
                    Text("가위"),
                  ]

                ),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    states = "ro";
                  });
                },
                child: Column(
                    children: [
                      Image.asset("/ro.png"),
                      Text("바위"),
                    ]

                ),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    states = "pa";
                  });
                },
                child: Column(
                    children: [
                      Image.asset("/pa.png"),
                      Text("보"),
                    ]

                ),
              ),
              SizedBox(height: 15,),
            ]
          ),
          InkWell(
            child: Column(
                children: [
                  Image.asset("/${states}.png"),
                ]

            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                var random = Random();
                int randomInt = random.nextInt(3);
                List<String> l = ["pa", "sc", "ro"];
                newSt = l[randomInt];

                if(states == "pa") {
                  if(newSt == "pa") {
                    result = "비겼다아아앙";
                  } else if(newSt == "sc") {
                    result = "졌당.............";
                    myScore -= 5;
                  } else {
                    result = "이겼다!!!!!!!!!!";
                    myScore += 10;
                  }
                } else if (states == "sc") {
                  if(newSt == "pa") {
                    result = "이겼다!!!!!!!!!!";
                    myScore += 10;
                  } else if(newSt == "sc") {
                    result = "비겼다아아앙";
                  } else {
                    result = "졌당.............";
                    myScore -= 5;
                  }
                } else if(states == "ro") {
                  if(newSt == "pa") {
                    result = "졌당.............";
                    myScore -= 5;
                  } else if(newSt == "sc") {
                    result = "이겼다!!!!!!!!!!";
                    myScore += 10;
                  } else {
                    result = "비겼다아아앙";
                  }
                }

              });
            },
            child: Column(
                children: [
                  Text("함 뜨자!!!!!!!!!!"),
                  Image.asset("/${newSt}.png"),
                  Column(
                    children: [
                      Text("${result}"),
                      Text("결과"),
                      Text("${myScore}점"),
                    ],
                  )
                ]

            ),
          ),
          ElevatedButton(
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EndScreen(myScore: myScore)),
            );
            },
            child: Text("이제 그만!!!!!!!!!!!!"))

        ],
      ),
    );
  }
}
