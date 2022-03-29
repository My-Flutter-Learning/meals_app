import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/mealdetails';

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
    final String mealTitle = routeArgs['title'] as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(mealTitle),
      ),
      body: const Center(child: Text('The Meal')),
    );
  }
}
