import 'package:allflutterconcepts/pages/home_page.dart';
import 'package:allflutterconcepts/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool isTapped=false;
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
              Text("Welcome $name"
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
                      onFieldSubmitted: (value){
                        print(value);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: ()async{
                        setState(() {
                          isTapped=true;
                        });
                        await Future.delayed(Duration(milliseconds: 500));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child:isTapped?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        height: 50,
                        width: isTapped?50:150,
                        color: Colors.deepPurple,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                    )
                    // ElevatedButton(onPressed: (){
                    //   print("CLicked");
                    //
                    // },
                    //     style: TextButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40.0)),
                    //     child: Text("Login")
                    // )
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
