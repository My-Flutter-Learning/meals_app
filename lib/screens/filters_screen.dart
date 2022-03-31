import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filterscreen';

  final Map<String, bool> currentFilters;
  final Function saveFilters;

  const FilterScreen(this.currentFilters, this.saveFilters, {Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue) {
    return SwitchListTile(
        value: currentValue,
        onChanged: (_) => updateValue,
        title: Text(title),
        subtitle: Text(description));
  }

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
        actions: [
          IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'vegetarian': _vegetarian,
                  'vegan': _vegan,
                  'lactose': _lactoseFree,
                };
                widget.saveFilters(selectedFilters);
              })
        ],
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
            _buildSwitchListTile(
                'Gluten Free', 
                'Only include gluten-free meals',
                _glutenFree,
                (newValue) {
                  setState(
                    () {
                    _glutenFree = newValue;
                  });
            }),
            _buildSwitchListTile(
                'Vegetarian',
                'Only include vegetarian meals',
                _vegetarian,
                (newValue) {
                  setState(
                    () {
                    _vegetarian = newValue;
                  });
            }),
            _buildSwitchListTile('Vegan',
            'Only include vegan meals',
            _vegan,
                (newValue) {
              setState(
                () {
                  _vegan = newValue;
                });
            }),
            _buildSwitchListTile(
                'Lactose Free',
                'Only include lactose-free meals',
                _lactoseFree,
                (newValue) {
              setState(
                () {
                  _lactoseFree = newValue;
                });
            }),
          ]),
          ),
        ],
      ),
    );
  }
}
