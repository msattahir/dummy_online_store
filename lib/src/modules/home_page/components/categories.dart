import 'package:dummy_online_store/src/modules/home_page/models/category_model.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  Categories({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(text: "Music", icon: Icons.music_note_outlined),
    CategoryModel(text: "Property", icon: Icons.apartment_outlined),
    CategoryModel(text: "Game", icon: Icons.sports_esports_outlined),
    CategoryModel(text: "Gadget", icon: Icons.devices_other_outlined),
    CategoryModel(text: "Electronic", icon: Icons.tv),
    CategoryModel(text: "Furniture", icon: Icons.weekend_outlined),
    CategoryModel(text: "Vehicle", icon: Icons.airport_shuttle_outlined),
    CategoryModel(text: "Book", icon: Icons.menu_book_outlined),
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
          mainAxisSpacing: 16,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (_, index) {
          return CategoryCard(
            text: categories[index].text,
            icon: categories[index].icon,
          );
        },
      ),
    );
  }
}
