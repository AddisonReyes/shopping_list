import 'package:shopping_list/models/category.dart';
import 'package:flutter/material.dart';

class GroceryItemRow extends StatelessWidget {
  const GroceryItemRow({
    super.key,
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  final String id;
  final String name;
  final int quantity;
  final Category category;

  @override
  Widget build(BuildContext context) {
    // print(categories);
    return ListTile(
      title: Text(
        name,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      leading: Container(
        color: category.categoryColor,
        height: 25,
        width: 25,
      ),
      trailing: Text(
        '$quantity',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
    );
  }
}
