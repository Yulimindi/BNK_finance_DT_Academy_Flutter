import 'package:flutter/material.dart';
import 'package:myprofile/components/profile_buttons.dart';
import 'package:myprofile/components/profile_count_info.dart';
import 'package:myprofile/components/profile_drawer.dart';
import 'package:myprofile/components/profile_header.dart';
import 'package:myprofile/components/profile_tab.dart';
import 'package:myprofile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 15,),
          ProfileHeader(),
          SizedBox(height: 15,),
          ProfileCountInfo(),
          SizedBox(height: 15,),
          ProfileButtons(),
          SizedBox(height: 15,),
          ProfileTab(),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.green,
      leading: Icon(Icons.eco, color: Colors.white,),
      title: Text("Yulimindi", style: TextStyle(color: Colors.white),),
      centerTitle: true,
    );
  }
}

