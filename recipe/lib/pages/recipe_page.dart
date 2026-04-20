import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/components/recipe_list_item.dart';
import 'package:recipe/components/recipe_title.dart';

import '../components/recipe_menu.dart';

class RecipePage extends StatelessWidget {
  const RecipePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem(imageName: "assets/images/coffee.jpeg", title: "Coffee", content: "Coffee", ),
            RecipeListItem(imageName: "assets/images/burger.jpeg", title: "Burger", content: "Burger", ),
            RecipeListItem(imageName: "assets/images/pizza.jpeg", title: "Pizza", content: "Pizza", ),
          ]
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.grey,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15,),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15,),
      ],
    );
  }
}
