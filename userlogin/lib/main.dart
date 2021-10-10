import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesom Web app",
    home: HomePage(),
  ));
  
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Awesome Web App"), 
        ),
      body: Container(
        child: Center(child: Text("Hii Flutter")),
      ) ,
    );
  }
}