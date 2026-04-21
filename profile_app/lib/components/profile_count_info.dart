import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildProfileCount("50", "Posts"),
        _buildLine(),
        _buildProfileCount("10", "Likes"),
        _buildLine(),
        _buildProfileCount("3", "Share"),
      ],
    );
  }

  Widget _buildProfileCount(String num, String name) {
    return Column(
      children: [
        Text(num),
        Text(name),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      height: 55.0,
      width: 1.5,
      color: Colors.blue,
    );
  }
}
