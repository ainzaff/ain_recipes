import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs["title"];
    final categoryID = routeArgs["id"];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle as String),
      ),
      body: Container(
        child: Text("Placeholder!"),
      ),
    );
  }
}
