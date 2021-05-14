import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",),
            SizedBox(height: 20,),
            Text("Welcome"
              ,style: TextStyle(fontSize: 24
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
                  },
                      child: Text("Login")
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
