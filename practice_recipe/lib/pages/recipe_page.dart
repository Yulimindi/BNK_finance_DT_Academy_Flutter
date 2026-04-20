import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_recipe/components/recipe_list_item.dart';
import 'package:practice_recipe/components/recipe_menu.dart';
import 'package:practice_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          RecipeTitle(),
          SizedBox(height: 10),
          RecipeMenu(),
          RecipeListItem(),
        ],
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.red,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.heart,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(width: 10,),
            Icon(
              CupertinoIcons.gear,
              color: Colors.white,
              size: 30,
            ),
        ],
        )
      ),
    ],
  );
}