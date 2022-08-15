import 'package:flutter/material.dart';


var a = " ";
int b = 0, c = 0;


class Dynamic_List extends StatefulWidget {
  const Dynamic_List({Key? key}) : super(key: key);

  @override
  State<Dynamic_List> createState() => _Dynamic_ListState();
}

class _Dynamic_ListState extends State<Dynamic_List> {
  List<Daynamic_wedget> ListDynamic = [];


  addDynamic() {
    if (ListDynamic.length >= 5) {
      return;
    }
    ListDynamic.add(Daynamic_wedget());
    setState(() {});
  }

  submitData() {
    ListDynamic.forEach((widget) => a = (widget.controller.text));




    setState((){
      b = int.parse(a);
      c += b;


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: ListDynamic.length,
                    itemBuilder: (_, index) => ListDynamic[index])),
            Text("Print: $c"),
            RaisedButton(
              onPressed: () {
                submitData();
              },
              child: Text("OK"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            addDynamic();
          },
          child: Icon(Icons.add)),
    );
  }
}

class Daynamic_wedget extends StatelessWidget {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Enter digit1"),
          ),
        ),
      ],
    );
    ;
  }
}

/////////////////////////////////////////////////////////////////
