import 'package:flutter/material.dart';
import './categories_screen.dart';

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
      home: const CategoriesScreen(),
    );
  }
}
 