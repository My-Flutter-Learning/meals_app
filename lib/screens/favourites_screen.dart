import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meals.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meals> favouriteMeals;

  const FavouritesScreen(this.favouriteMeals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return const Center(child: Text('You have no favourites yet.'));
    } else {
      return ListView.builder(itemBuilder: ((context, index) {
        return MealItem(
          id: favouriteMeals[index].id,
          title: favouriteMeals[index].title,
          imageUrl: favouriteMeals[index].imageUrl,
          duration: favouriteMeals[index].duration,
          complexity: favouriteMeals[index].complexity,
          affordability: favouriteMeals[index].affordability,
        );
      }) , itemCount: favouriteMeals.length);
    }
  }
}
