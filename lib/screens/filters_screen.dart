import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filterscreen';
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
      String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
        value: currentValue,
        onChanged:(_) => updateValue,
        title: Text(title),
        subtitle: Text(description));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          Expanded(
              child: ListView(children: [
                _buildSwitchListTile(
                    'Gluten Free',
                    'Only include gluten-free meals',
                    _glutenFree,
                    (newValue) {
                      setState(() {
                        _glutenFree = newValue;});
                      }),
                _buildSwitchListTile(
                    'Vegetarian',
                    'Only include vegetarian meals',
                    _vegetarian,
                    (newValue) {
                      setState(() {
                        _vegetarian = newValue;});
                      }),
                _buildSwitchListTile(
                    'Vegan',
                    'Only include vegan meals',
                    _vegan,
                    (newValue) {
                      setState(() {
                        _vegan= newValue;});
                      }),
                 _buildSwitchListTile(
                    'Lactose Free',
                    'Only include lactose-free meals',
                    _lactoseFree,
                    (newValue) {
                      setState(() {
                        _lactoseFree = newValue;});
                      }),
            
          ])),
        ],
      ),
    );
  }
}
