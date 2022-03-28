import 'package:flutter/material.dart';

import '../dummy_data.dart';

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
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categoryId!.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar:
            AppBar(title: Text(categoryTitle), backgroundColor: categoryColor),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(categoryMeals[index].title!);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
