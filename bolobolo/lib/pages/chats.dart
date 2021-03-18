import 'package:flutter/material.dart';

class Crops extends StatefulWidget {
  @override
  _CropsState createState() => _CropsState();
}

class _CropsState extends State<Crops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purple[700],
        title: Text("Chats"),
      ),
    );
  }
}
