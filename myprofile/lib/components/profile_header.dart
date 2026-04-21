import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),Spacer(),
        Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/lim.jpg"),
          ),
        ),
        Spacer(),
        Column(
          children: [
            Text("Yulimindi", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
            Text("백엔드/AI 개발자", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
            Text("머신러닝 엔지니어", style: TextStyle(fontSize: 20),),
          ],
        ),
        Spacer(),Spacer(),
      ],
    );
  }
}
