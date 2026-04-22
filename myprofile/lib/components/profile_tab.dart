import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Column(
      children: [
        _buildTabBar(),
        // Expanded(child: _buildTabBarView()),
      ],
    ));
  }

  Widget _buildTabBar() {
    return TabBar(
      labelColor: Colors.green,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.green,
      overlayColor: MaterialStateProperty.all(Colors.green.withOpacity(0.2)),
      tabs: [
        Tab(icon: Icon(Icons.eco, color: Colors.green,),),
        Tab(icon: Icon(Icons.eco_outlined, color: Colors.green,),),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(children: [
      ListView(
        children: [

        ],
      ),
      Container(
        child: Column(
          children: [
            Text("안녀어엉"),
          ],
        ),
      )
    ]);
  }
}


