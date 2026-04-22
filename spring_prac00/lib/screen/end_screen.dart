import 'package:flutter/material.dart';
class EndScreen extends StatefulWidget {

  final int myScore;

  const EndScreen({super.key, required this.myScore});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${widget.myScore}점! 축하해용"),
      ),
    );
  }
}
