import 'package:flutter/material.dart';
import 'package:flutter_practice/Home_page.dart';


class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(    // Scroll the screen
            child: Column(
        children: [
            Image.asset(
              "assets/images/Login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true, // hide the text
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),


                  /////// Design animated wedgets /////


                  InkWell(
                    onTap: ()async{    // async use for await permeter

                    setState((){
                      changeButton = true;
                    });

                    await Future.delayed(Duration(seconds: 1));  // wait 1 seconds for animation

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home_page()));
                    },

                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),   // duration of animation

                      height: 40,
                      width: changeButton? 50:  130 ,
                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.done,color: Colors.white,):   // if click on button is true show done icon else show login text
                      Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18

                        ),),

                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(50)

                      ),
                    ),
                  )




                                    /////// A w /////




                  // RaisedButton(
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Home_page()));
                  //   },
                  //   child: Text("Login"),
                  //
                  // )






                ],
              ),
            )
        ],
      ),
          )),
    );
  }
}
