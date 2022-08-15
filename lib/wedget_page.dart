import 'package:flutter/material.dart';
import 'package:flutter_practice/wedget/List_view_builder.dart';

class wedget_pages extends StatefulWidget {
  const wedget_pages({Key? key}) : super(key: key);

  @override
  State<wedget_pages> createState() => _wedget_pagesState();
}

class _wedget_pagesState extends State<wedget_pages> {
  @override
  Widget build(BuildContext context) {
    return List_view_builder();
  }
}
