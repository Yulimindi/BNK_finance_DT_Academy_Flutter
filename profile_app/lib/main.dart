import 'package:flutter/material.dart';
import 'package:profile_app/components/profile_buttons.dart';
import 'package:profile_app/components/profile_count_info.dart';
import 'package:profile_app/components/profile_drawer.dart';
import 'package:profile_app/components/profile_header.dart';
import 'package:profile_app/components/profile_tab.dart';
import 'package:profile_app/components/profile_tap_default.dart';
import 'package:profile_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: ProfileDrawer(),
      appBar : _buildProfileAppBar(),
      body: Column(
        children: [
          ProfileHeader(),
          SizedBox(height: 10,),
          ProfileCountInfo(),
          SizedBox(height: 10,),
          ProfileButtons(),
          // Expanded(child: ProfileTab()),
          Expanded(child: ProfileTapDefault()),

        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios),
      title: Text("앱바에용"),
      centerTitle: true,
    );
  }
}