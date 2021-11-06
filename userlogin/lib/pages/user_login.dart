import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:userlogin/pages/home.dart';
import 'package:userlogin/utiles/routes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();


  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
          changeButton = false; 
        });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child:  Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assests/images/login.png" , fit: BoxFit.cover,
              height: 355,),
              Text(
                "Welcome $name" , 
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,),
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
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }else if (value.length < 5){
                            return "Username must be greater than 5 char";
                          }
                          null;
                        },
                        onChanged: (value){
                          name = value;
                          setState(() {
                            
                          });
                        },
                    ),
                    TextFormField(
                      obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          labelText: "Password"),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          }else if (value.length < 8){
                            return "Password must be greater than 6 digit";
                          }
                          null;
                        },
                    ),
                    SizedBox(
                      height: 20.0,
                      ),
          
                    InkWell(
                      onTap: () => moveToHome(context),
                      child:AnimatedContainer(
                        duration:Duration(seconds: 1),
                        height: 40,
                        width: changeButton? 50 : 140,
                        alignment: Alignment.center,
                        child: changeButton ? Icon(
                          Icons.done,
                          color:Colors.white,
                        ):
                        Text(
                          "Login",
                          style: TextStyle(fontWeight:FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white ),),
                    
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                            boxShadow: [
                              BoxShadow(color: Colors.black , blurRadius: 5 , 
                              offset: Offset(2.0, 2.5))
                            ],
                            gradient: LinearGradient(colors: [Colors.blue , Colors.deepPurple]),
                            
                          )
                      ),
                    ),
                    
        
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}