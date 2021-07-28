import 'package:flutter/material.dart';
import 'home_page.dart';
import 'category_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ain Recipes',
        theme: ThemeData(
          primaryColor: Colors.amber.shade900,
          accentColor: Colors.amber,
          primarySwatch: Colors.amber,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.amber[900],
            textTheme: TextTheme(
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'CherryBlue',
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        home: HomePage(),
        routes: {"/category_page": (ctx) => CategoryPage()});
  }
}
