import 'package:flutter/material.dart';
import "./display_category.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 100,
              child: Image.asset(
                "assets/ain_recipes_logo.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              "AinRecipes",
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        child: CategoryGrid(),
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [Colors.amber.shade900, Colors.amber.shade300],
          center: Alignment.bottomCenter,
        )),
      ),
    );
  }
}
