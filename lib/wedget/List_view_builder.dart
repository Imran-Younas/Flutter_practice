import 'package:flutter/material.dart';

class List_view_builder extends StatefulWidget {
  const List_view_builder({Key? key}) : super(key: key);

  @override
  State<List_view_builder> createState() => _List_view_builderState();
}

class _List_view_builderState extends State<List_view_builder> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int num1 = 0, num2 = 0, ans1 = 0, ans2 = 0;
  add(){
    setState((){
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);

      ans1 = num1 + num2;
    });
  }
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

              controller: controller1,

              decoration: InputDecoration(
                  hintText: "Enter 1st digit $index"
              ),

            ),

            TextFormField(

              controller: controller2,

              decoration: InputDecoration(
                  hintText: "Enter 2nd digit"
              ),

            ),

            Text("Output: $ans1       "),

            RaisedButton(onPressed: (){
              add();
            }, child: Text("Click mee"),)

          ],
        ),

      ),
      ),
    );
  }
}
