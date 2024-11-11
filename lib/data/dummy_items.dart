import 'package:shoping_app/data/categories.dart';
import 'package:shoping_app/model/category.dart';
import 'package:shoping_app/model/gorcery_items.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categories.dairy]!),
  GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categories.fruit]!),
  GroceryItem(
      id: 'c',
      name: 'checken',
      quantity: 1,
      category: categories[Categories.meat]!),
];
