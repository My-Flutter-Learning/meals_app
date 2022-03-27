import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categorymeals';
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final String categoryId = routeArgs['id']! as String;
    final String categoryTitle = routeArgs['title']! as String;
    final Color categoryColor = routeArgs['color'] as Color;
    return Scaffold(
      appBar:
          AppBar(title: Text(categoryTitle), backgroundColor: categoryColor),
      body: const Center(
        child: Text('The Recipes for this category!'),
      ),
    );
  }
}
