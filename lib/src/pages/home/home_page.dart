import 'package:basic_flutter_food_app/src/pages/home/widgets/categories_section.dart';
import 'package:basic_flutter_food_app/src/pages/home/widgets/search_field.dart';
import 'package:basic_flutter_food_app/src/shared/models/category_model.dart';
import 'package:basic_flutter_food_app/src/shared/models/diet_model.dart';
import 'package:basic_flutter_food_app/src/shared/models/popular_model.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/diets_section.dart';
import 'widgets/popular_diets_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];

  void _getInitialInformation() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInformation();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: ListView(
          children: [
            const SearchField(),
            const SizedBox(
              height: 40,
            ),
            CategoriesSection(categories: categories),
            const SizedBox(
              height: 40,
            ),
            DietsSection(diets: diets),
            const SizedBox(
              height: 40,
            ),
            PopularDietsSection(popularDiets: popularDiets),
          ],
        ));
  }
}
