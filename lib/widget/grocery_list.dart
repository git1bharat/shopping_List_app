import 'package:flutter/material.dart';
import 'package:shoping_app/data/dummy_items.dart';
import 'package:shoping_app/widget/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  void _addItem() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(onPressed: _addItem, icon: const Icon((Icons.add)))
        ],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, int index) {
          return ListTile(
            title: Text(
              groceryItems[index].name,
            ),
            leading: Container(
              width: 24,
              height: 24,
              color: groceryItems[index].category.color,
            ),
            trailing: Text(
              groceryItems[index].quantity.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
