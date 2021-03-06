import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userlogin/pages/login.dart';

import 'pages/home.dart';

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
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),

      },
    );
    
  }
}
