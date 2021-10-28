import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userlogin/pages/user_login.dart';

import 'pages/home.dart';
import 'utiles/routes.dart';

void main() {
  runApp(MyApp());
}

//image pic for profile unDraw.co
//pub.dev for any plugin

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, 
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),

      },
    );
    
  }
}
