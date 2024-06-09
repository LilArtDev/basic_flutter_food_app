import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
          decoration: InputDecoration(
        hintText: 'Procurar Comida',
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IntrinsicHeight(
          child: Container(
            width: 100,
            margin: const EdgeInsets.only(right: 15),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VerticalDivider(
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xffDDDADA),
                ),
                SizedBox(width: 10),
                Icon(Icons.tune)
              ],
            ),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
      )),
    );
  }
}
