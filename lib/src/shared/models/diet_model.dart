import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calorie,
      required this.boxColor,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: 'Panqueca doce',
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Fácil',
        duration: '30min',
        calorie: '180kCal',
        viewIsSelected: true,
        boxColor: const Color(0xff9DCEFF)));

    diets.add(DietModel(
        name: 'Pãozinho',
        iconPath: 'assets/icons/canai-bread.svg',
        level: 'Fácil',
        duration: '20min',
        calorie: '230kCal',
        viewIsSelected: false,
        boxColor: const Color(0xffEEA4CE)));

    return diets;
  }
}
