import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {

  final String content;
  final String title;
  final String imageName;

  const RecipeListItem ({required this.content, required this.title, required this.imageName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(aspectRatio: 2/1,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(imageName, fit: BoxFit.cover,),
            ),
          ),
          SizedBox(height: 12,),
          Text("Made $title", style: TextStyle(
            fontSize: 20,
          ),),
          Text("Have you ever made your own Made $content?", style: TextStyle(
            color: Colors.grey,
          ),),
        ],
      ),
    );
  }
}

// Widget _buildListItem (String asset, String title, String content) {
//   return Column(
//       children: [
//         AspectRatio(aspectRatio: 2/1,
//         child: ClipRRect(
//           borderRadius: BorderRadiusGeometry.circular(20),
//           child: Image.asset(asset, fit: BoxFit.cover,),
//         ),
//         ),
//         Text("Made $title", style: TextStyle(
//           fontSize: 20,
//         ),),
//         Text("Have you ever made your own Made $content?", style: TextStyle(
//           color: Colors.grey,
//         ),),
//       ],
//   );
// }

