import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        _widgets(Icons.restaurant_rounded, "ALL"),
        Spacer(),
        _widgets(Icons.coffee, "Coffee"),
        Spacer(),
        _widgets(Icons.fastfood, "Burger"),
        Spacer(),
        _widgets(Icons.local_pizza, "Pizza"),
        Spacer(),
      ],
    );
  }
}

Widget _widgets(IconData icon, String text) {
  return Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.red,
          size: 30,
        ),
        Text(text, style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ],
    ),
  );
}
