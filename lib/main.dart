import 'package:allflutterconcepts/pages/Login.dart';
import 'package:allflutterconcepts/pages/home_page.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/":(context)=>HomePage(),
        "/login":(context)=>LoginPage()
    },
    );
  }
}

