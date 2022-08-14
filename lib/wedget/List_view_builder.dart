import 'package:flutter/material.dart';

class List_view_builder extends StatefulWidget {
  const List_view_builder({Key? key}) : super(key: key);

  @override
  State<List_view_builder> createState() => _List_view_builderState();
}

class _List_view_builderState extends State<List_view_builder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder( itemCount: 20,
        itemBuilder: (BuildContext context, int index)
      => Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 0),

        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter 1st digit $index"
              ),

            ),

            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter 2nd digit"
              ),

            ),

            Text("Output:       "),
            RaisedButton(onPressed: (){}, child: Text("Click mee"),)

          ],
        ),

      ),
      ),
    );
  }
}
