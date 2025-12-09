import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whering/core/ui/assets.dart';

import 'category_widget.dart';

final List<Category> categories = const [
  Category(label: 'All', image: AssetPngs.all),
  Category(label: 'Tops', image: AssetPngs.tops),
  Category(label: 'Bottoms', image: AssetPngs.bottoms),
  Category(label: 'Footwear', image: AssetPngs.footwear),
  Category(label: 'Outerwear', image: AssetPngs.outerwear),
  Category(label: 'Tops', image: AssetPngs.tops),
  Category(label: 'Bottoms', image: AssetPngs.bottoms),
];

class Category {
  final String label;
  final AssetPngs image;

  const Category({required this.label, required this.image});
}

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryWidget(
            label: categories[index].label,
            image: categories[index].image,
            isSelected: index == 0,
            onTap: () => {HapticFeedback.lightImpact()},
          ),
        ),
      ),
    );
  }
}
