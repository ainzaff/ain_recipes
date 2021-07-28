import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './models/category.dart';
import 'category_page.dart';

class CategoryItem extends StatelessWidget {
  final Category _category;
  CategoryItem(this._category);

  _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryPage.routeName,
        arguments: {"id": _category.id, "title": _category.title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [_category.color, _category.color.withOpacity(0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Text(
          _category.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
