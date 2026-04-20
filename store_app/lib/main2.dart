import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store Application"),
      ), body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Woman", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
              Spacer(),
              Text("Kids", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
              Spacer(),
              Text("Shoes", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
              Spacer(),
              Text("Bag", style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20,
              )),
            ],
          ),
        ),
        Container(
          child: Image.asset("assets/bag.jpeg"),
        ),
        SizedBox(height: 2,),
        Container(
          child: Image.asset("assets/cloth.jpeg"),
        ),
      ],
    ),
    );
  }
}
