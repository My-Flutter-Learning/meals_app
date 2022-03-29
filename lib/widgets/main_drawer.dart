import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon) {
    return ListTile(
            leading: Icon(icon, size:26),
            title: Text(
                title, 
                style: const TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),),
            onTap: null,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).accentColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile('Meals', Icons.restaurant),
          buildListTile('Settings', Icons.settings),
        ],
      ),
    );
  }
}