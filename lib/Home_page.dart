import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),

      ),
      body: Center(
        child: Container(
          child: Text("Hey i am home Page"),
        ),
      ),
    );
  }
}
