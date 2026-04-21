import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildProfileCount("Major", "응용소프트웨어공학"),
        _buildLine(),
        _buildProfileCount("Main Lang", "Java"),
        _buildLine(),
        _buildProfileCount("Age", "25"),
      ],
    );
  }

  Widget _buildProfileCount(String one, String two) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Text(one, style: TextStyle(fontWeight: FontWeight.bold),),
          Text(two),
        ],
      ),
    );
  }

  Widget _buildLine() {
    return Container(
      height: 50,
      width: 2,
      color: Colors.green,
    );
  }
}
