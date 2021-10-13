import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Center(
        child: Container(
          child: Center(child: Text(
            "User Login",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black38,
            ),  )),
          padding: const EdgeInsets.all(8.0),
          height: 450,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 0.05, offset: Offset(5, 5))
            ],
            color: Colors.teal,
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.lightGreenAccent],
            ),
          ),
        ),
      ),
    );
  }
}