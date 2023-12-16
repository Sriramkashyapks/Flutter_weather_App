import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  void timer(){
    //process = 5 sec
    Future.delayed(Duration(seconds: 3),(){
      print("alaram is riniging");
    });
    print("You can do Other Stuff Tooo");
  }

  int counter = 1;
  @override
  void initState() {
    super.initState();
    timer();
    print("init state");
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set State Called");
  }
  @override
  void dispose() {
    super.dispose();
    print("Widget Destroyed");
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME ACTIVITY"),
      ),
      body:
      Column(
        children:<Widget> [
          FloatingActionButton(
            onPressed: () => setState(() {
              counter += 1;
            }),
          ),
          Text("$counter"),
        ],
      )

    );
  }
}
