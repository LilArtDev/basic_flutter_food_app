import 'package:basic_flutter_food_app/src/shared/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularDietsSection extends StatelessWidget {
  final List<PopularDietsModel> popularDiets;

  const PopularDietsSection({super.key, required this.popularDiets});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Receitas\npopulares',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.separated(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              PopularDietsModel item = popularDiets[index];
              return Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(item.iconPath, width: 65),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(
                          '${item.level} | ${item.duration} | ${item.calorie}',
                          style: const TextStyle(
                              color: Color(0xff7B6F72),
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(Icons.chevron_right),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(
                  height: 25,
                ),
            itemCount: popularDiets.length),
      ],
    );
  }
}
