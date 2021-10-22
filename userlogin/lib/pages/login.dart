import 'dart:html';

import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:userlogin/pages/home.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assests/images/login.png" , height: 355,width: 400,),
          Text(
            "Welcome" , style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 255.0 , vertical: 22.0),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      labelText: "Username",
                    ),
                ),
                TextFormField(
                  obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                    ),
                ),
                SizedBox(
                  height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Login successful");

                    }, 
                    child: Text("Login"),
                    style: TextButton.styleFrom(),)
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}