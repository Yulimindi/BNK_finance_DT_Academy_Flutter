import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        _buildHeaderAvatar(),
        SizedBox(width: 20,),
        _buildProfileInfo(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return Container(
        width: 100,
        height: 100,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/avatar.png"),
        ),
    );
  }

  Widget _buildProfileInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("GetinThere", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
        Text("프로그래머/작가/강사", style: TextStyle(
          fontSize: 20,
        ),),
        Text("데어 프로그래밍", style: TextStyle(
          fontSize: 18,
        ),),
      ],
    );
  }

}
