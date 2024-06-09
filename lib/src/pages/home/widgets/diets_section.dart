import 'package:basic_flutter_food_app/src/shared/models/diet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DietsSection extends StatelessWidget {
  final List<DietModel> diets;

  const DietsSection({super.key, required this.diets});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            'Recomendações\npara dieta',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(width: 25),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: diets.length,
              itemBuilder: (_, index) {
                final DietModel item = diets[index];
                return Container(
                  width: 210,
                  decoration: BoxDecoration(
                      color: item.boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(item.iconPath),
                      Column(
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '${item.level} | ${item.duration} | ${item.calorie}',
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xff7B6F72),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              item.viewIsSelected
                                  ? const Color(0xff9DCEFF)
                                  : Colors.transparent,
                              item.viewIsSelected
                                  ? const Color(0xff92A3FD)
                                  : Colors.transparent,
                            ])),
                        child: Center(
                          child: Text(
                            'Ver',
                            style: TextStyle(
                                fontSize: 14,
                                color: item.viewIsSelected
                                    ? Colors.white
                                    : const Color(0xffC58BF2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
