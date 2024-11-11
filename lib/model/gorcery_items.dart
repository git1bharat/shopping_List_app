import 'package:shoping_app/data/dummy_items.dart';
import 'package:shoping_app/model/category.dart';

class GroceryItem {
  const GroceryItem(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.category});
  final String id;
  final String name;
  final int quantity;
  final Category category;
}