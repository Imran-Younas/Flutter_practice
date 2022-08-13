import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class my_drawer extends StatelessWidget {
  const my_drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,

      child: ListView(
        children: const [
          DrawerHeader(

            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              margin: EdgeInsets.zero,
              accountName: Text("Imran Younas"),
              accountEmail: Text("imranaldn@gmail.com"),
             currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/car.jpeg"),),

            )
          ),


          ListTile(
            leading: Icon(
              CupertinoIcons.home, color: Colors.white,
            ),
            title: Text("Home", style: TextStyle(color: Colors.white),),
          ),
          
          ListTile(leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
            title: Text("Pofile", style: TextStyle(color: Colors.white,),),
          ),

          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white,),
            title: Text("Mail me", style: TextStyle(color: Colors.white),),
          )







        ],
      ),
    );
  }
}
