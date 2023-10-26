import 'package:dummy_online_store/src/modules/home_page/models/category_model.dart';
import 'package:flutter/material.dart';

import 'categories_card.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List<CategoryModel> categories = [
    CategoryModel("Music", Icons.music_note_outlined),
    CategoryModel("Property", Icons.apartment_outlined),
    CategoryModel("Game", Icons.sports_esports_outlined),
    CategoryModel("Gadget", Icons.devices_other_outlined),
    CategoryModel("Electronic", Icons.tv),
    CategoryModel("Vehicles", Icons.airport_shuttle_outlined),
    CategoryModel("Furniture", Icons.weekend_outlined),
    CategoryModel("Book", Icons.menu_book_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 14,
        ),
        itemBuilder: (_, index) {
          return CategoryCard(
            icon: categories[index].icon,
            text: categories[index].text,
          );
        },
      ),
    );
  }
}
