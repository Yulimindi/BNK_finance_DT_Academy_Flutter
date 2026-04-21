import 'package:flutter/material.dart';

class ProfileTapDefault extends StatelessWidget {
  const ProfileTapDefault({super.key});

  @override
  Widget build(BuildContext context) {
    // statefull을 사용하지 않고 사용할 때는 DefaultTabController를 사용한다
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          _buildTabBar(),
          Expanded(child: _buildTabBarView()),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car),),
          Tab(icon: Icon(Icons.directions_transit),),
        ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
        children: [
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network("https://picsum.photos/id/${index + 1}/200/200");
          },
          ),
          Container(color: Colors.amber,),
        ],
    );
  }
}
