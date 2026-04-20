import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BankPage(),
    );
  }
}

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          title: Text("은행 페이지"),
        ),
        body: Column(
          children: [
            Row(children: [
              Image.asset("assets/bank.JPG"),
              Spacer(),
              Spacer(),
              Spacer(),
              Text("개인"),
              Spacer(),
              Text("기업"),
              Spacer(),
              Text("|"),
              Spacer(),
              Text("금융상품"),
              Spacer(),
              Text("|"),
              Spacer(),
              Text("자산관리"),
              Spacer(),
              Text("부동산"),
              Spacer(),
              Text("퇴직연금"),
              Spacer(),
              Text("카드"),
            ],),
            Container(child: Image.asset("assets/bag.jpeg")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Container(
                  child: Text("전체계좌조회"),
                  color: CupertinoColors.systemYellow,
                ),
                Spacer(),
                Container(
                  child: Text("계좌이체"),
                  color: CupertinoColors.systemYellow,
                ),
                Spacer(),
                Container(
                  child: Text("고객우대제도"),
                ),
                Spacer(),
                Container(
                  child: Text("소비자보호"),
                ),
                Spacer(),
                Container(
                  child: Text("상담/예약"),
                ),
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("새소식", style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text("바로가기"),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("2026 상반기 어쩌구"),
                      Text("도깨비 빤스는 더러워용"),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("2026 상반기 어쩌구"),
                      Text("도깨비 빤스는 더러워용"),
                    ],
                  ),
                ],
              ),
            ),
          ],

        ),

    );
  }

}
