import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filterscreen';

  final Map<String, bool> currentFilters;
  final Function saveFilters;

  const FilterScreen(this.currentFilters, this.saveFilters, {Key? key})
      : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  // Widget _buildSwitchListTile(String title, String description,
  //     bool currentValue, Function updateValue) {
  //   return SwitchListTile(
  //       value: currentValue,
  //       onChanged: (_) => updateValue,
  //       title: Text(title),
  //       subtitle: Text(description));
  // }

  @override
  void initState() {
    _glutenFree = widget.currentFilters['gluten']!;
    _vegetarian = widget.currentFilters['vegetarian']!;
    _vegan = widget.currentFilters['vegan']!;
    _lactoseFree = widget.currentFilters['lactose']!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
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
              SwitchListTile(
                  value: _glutenFree,
                  onChanged: (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                  title: const Text('Gluten Free'),
                  subtitle: const Text('Only include gluten-free meals')),
              SwitchListTile(
                  value: _vegetarian,
                  onChanged: (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                  title: const Text('Vegetarian'),
                  subtitle: const Text('Only include vegetarian meals')),
              SwitchListTile(
                  value: _vegan,
                  onChanged: (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                  title: const Text('Vegan'),
                  subtitle: const Text('Only include vegan meals')),
              SwitchListTile(
                  value: _lactoseFree,
                  onChanged: (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                  title: const Text('Lactose Free'),
                  subtitle: const Text('Only include lactose-free meals')),
            ]),
          ),
          ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'vegetarian': _vegetarian,
                  'vegan': _vegan,
                  'lactose': _lactoseFree,
                };
                widget.saveFilters(selectedFilters);
              }
            ),
        ],
      ),
    );
  }
}
