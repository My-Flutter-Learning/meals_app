import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme:  const TextTheme(
          bodyLarge: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyMedium: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          titleMedium: TextStyle(
            fontSize: 22,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.w500,
          )
        )
      ),
      home: const TabsScreen(),
      routes:  {
        CategoryMealsScreen.routeName : (context) => const CategoryMealsScreen(),
        MealDetailScreen.routeName :(context) => const MealDetailScreen()
      },
      // This is used as a last resort i.e as a fallback page.
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder:((context) => const CategoriesScreen()));
      },
    );
  }
} 