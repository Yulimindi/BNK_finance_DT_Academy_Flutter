import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: const Text('Flutter 다이얼로그 위젯'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // 기본 다이얼로그
  void showAlertDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('기본 알림 대화상자'),
          content: const Text('기본 알림 대화상자입니댕'),
          actions: [
            TextButton(
              onPressed: (){
                // 창 닫기
                Navigator.of(context).pop();
              },
              child: const Text('취소')
            ),
            TextButton(
              onPressed: (){Navigator.of(context).pop();},
              child: const Text('확인')
            ),
          ],
        );
      }
    );
  }

  // 달력 다이얼로그
  void showCalendarDialog(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900), // 최소 선택 날짜
      lastDate: DateTime(2100) // 최대 선택 날짜
    );
    print('선택한 날짜 : $selectedDate');
  }

  // 사용자 정의 다이얼로그
  void showMyDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text('사용자 정의 대화상자'),
                Text('내용입니댕'),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: const Text('닫기')
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(onPressed: () => showAlertDialog(context), child: const Text('기본 다이얼로그 실행')),
              ElevatedButton(onPressed: () => showCalendarDialog(context), child: const Text('달력 다이얼로그 실행')),
              ElevatedButton(onPressed: () => showMyDialog(context), child: const Text('사용자 정의 다이얼로그 실행')),
            ],
          ),
    );
  }
}
