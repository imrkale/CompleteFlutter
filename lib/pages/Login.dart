import 'package:allflutterconcepts/pages/home_page.dart';
import 'package:allflutterconcepts/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png",),
              SizedBox(height: 20,),
              Text("Welcome"
                ,style: TextStyle(fontSize: 30
                    ,fontWeight: FontWeight.bold,),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username"
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      print("CLicked");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                        style: TextButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40.0)),
                        child: Text("Login")
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
