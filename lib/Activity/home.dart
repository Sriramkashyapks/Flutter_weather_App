import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {
  String username = "";

  // Future.delayed - Function starts but after some delay
  // Async - Functions start but return some delay

  void getData() async {
    //Get Data
    Response response = await get(Uri.parse("url"));
    Map data = jsonDecode(response.body);
    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];
    print(weather_data); // list type
    print(weather_main_data); // map type
    // double temp = temp_data['temp'];
    // print(temp);

  }

  int counter = 1;
  @override
  void initState() {
    super.initState();
    getData();
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
