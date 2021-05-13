import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Hello")),

      ),
      body: SafeArea(
        child: Material(
          child: Center(
            child: Container(
              child: Text("Welcome to Gabba"),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
