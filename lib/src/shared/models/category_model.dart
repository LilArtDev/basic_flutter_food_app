import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    final List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salada',
        iconPath: 'assets/icons/plate.svg',
        boxColor: const Color(0xff92A3FD)));
    categories.add(CategoryModel(
        name: 'Bolo',
        iconPath: 'assets/icons/pancakes.svg',
        boxColor: const Color(0xffC58BF2)));
    categories.add(CategoryModel(
        name: 'Torta',
        iconPath: 'assets/icons/pie.svg',
        boxColor: const Color(0xff92A3FD)));
    categories.add(CategoryModel(
        name: 'Frutas',
        iconPath: 'assets/icons/orange-snacks.svg',
        boxColor: const Color(0xffC58BF2)));

    return categories;
  }
}
