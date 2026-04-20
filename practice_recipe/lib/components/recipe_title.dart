import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 8.0, left : 8.0),
      child: Container(
        color: Colors.white,
          child: Text("Recipes", style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),),
        ),
    );
  }
}
