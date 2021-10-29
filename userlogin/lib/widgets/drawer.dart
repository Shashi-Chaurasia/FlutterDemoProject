import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // final image = "assets/images/mypic.jpeg";
  // const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding:EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shashi Chaurasia"), 
                accountEmail: Text("spchaurasia@alletec.com"),
                // currentAccountPicture: Image.asset("assets/images/mypic.jpeg"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assests/images/mypic.jpeg"),
                )
                
              ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  )
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  )
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email_me",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  )
                ),
              )
          ],
          ),
      )
    );
  }
}