import 'package:flutter/material.dart';
import 'package:flutter_practice/Home_page.dart';
import 'package:flutter_practice/Login_page.dart';


void main(){
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Parctice",
    home: First_page(),
  ));
}

class First_page extends StatelessWidget {
  const First_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    return Login_page();
      return Home_page();
  }
}
