import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem(this.title, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(15),
          ),
      );
  }
}
