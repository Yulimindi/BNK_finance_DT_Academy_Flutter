import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            print("날 뽑아줘서 고마워");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 30,
            width: 100,
            alignment: Alignment.center,
            child: Text("Employment", style: TextStyle(color: Colors.white),),
          ),
        ),
        InkWell(
          onTap: () {
            print("문자는 보내지 마세요");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 30,
            width: 100,
            alignment: Alignment.center,
            child: Text("Message", style: TextStyle(color: Colors.white),),
          ),
        )


      ],
    );
  }
}
