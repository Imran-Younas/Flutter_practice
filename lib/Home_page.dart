import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page of App"),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
      ),

      body: Center(
        child: Container(
          child: Text("Practice App"),
        ),
      ),
    );
  }
}
