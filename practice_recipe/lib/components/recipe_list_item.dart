import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        _buildItem("assets/images/burger.jpeg", "Burger", "햄버거는 야채가 많은게 맛있어요"),
        _buildItem("assets/images/coffee.jpeg", "Coffee", "커피는 역시 레쓰비"),
        _buildItem("assets/images/pizza.jpeg", "Pizza", "좋은 피자 위대한 피자"),
      ],
    );
  }
}

Widget _buildItem(String name, String title, String content) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        AspectRatio(aspectRatio: 2/1,
        child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(name, fit: BoxFit.cover),
        ),),
        SizedBox(height: 10,),
        Text(title, style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        Text(content, style: TextStyle(
          color: Colors.grey,
        ))

      ],
    ),
  );
}
