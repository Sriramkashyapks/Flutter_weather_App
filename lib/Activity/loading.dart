import 'package:flutter/material.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
        TextButton.icon(onPressed: () {
            Navigator.pushNamed(context, "/home");
            }, icon: Icon(Icons.add_to_home_screen), label: Text("GOTO HOME SCREEN"))
            ],),
            ),
    );
  }
}
