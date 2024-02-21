import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key, required this.name, required this.log});

  final String name;
  final String log;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topRight, colors: [
              Colors.greenAccent,
             
              Colors.white
            ])),
            height: 500,
            width: 400,
            child: Column(
              children: [
                Text(log),
                Text(name),
              ],
            ),
          )),
    );
  }
}
