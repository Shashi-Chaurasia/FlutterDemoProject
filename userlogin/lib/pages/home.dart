import 'package:flutter/material.dart';
import 'package:userlogin/widgets/drawer.dart';



class HomePage extends StatelessWidget {
  //const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Web Aapp"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome"),
          
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
