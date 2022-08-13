import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Parctice",
    home: First_page(),
  ));
}

class First_page extends StatelessWidget {
  const First_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page of App"),
        backgroundColor: Colors.grey,
      ),

      body: Center(
        child: Container(
          child: Text("Practice App"),
        ),
      ),
    );
  }
}
