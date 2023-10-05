import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/controller.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({super.key, this.service = false});

  final bool service;

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: widget.service
              ? dropDown1(categoryProvider)
              : dropDown2(categoryProvider),
        ),
      ],
    );
  }

  DropdownButton<String> dropDown1(CategoryProvider categoryProvider) {
    return DropdownButton(
      isExpanded: true,
      value: categoryProvider.category1,
      hint: const Text('Select'),
      items: List<DropdownMenuItem<String>>.generate(
        categoryProvider.categories.length,
        (int index) {
          return DropdownMenuItem(
            value: categoryProvider.categories[index],
            child: Text(categoryProvider.categories[index]),
          );
        },
      ),
      onChanged: (value) {
        setState(() {
          categoryProvider.category2 = null;
          categoryProvider.fetchEachCategory(category: value);
          categoryProvider.category1 = value;
          log(categoryProvider.category1.toString());
        });
      },
    );
  }

  DropdownButton<String> dropDown2(CategoryProvider categoryProvider) {
    return DropdownButton(
      isExpanded: true,
      value: categoryProvider.category2,
      hint: const Text('Select'),
      items: List<DropdownMenuItem<String>>.generate(
        categoryProvider.categoryList.length,
        (int index) {
          return DropdownMenuItem(
            value: categoryProvider.categoryList[index].title.toString(),
            child: Text(
              categoryProvider.categoryList[index].title.toString(),
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
      onChanged: (value) {
        setState(() {
          categoryProvider.category2 = value;
          log(categoryProvider.category2.toString());
        });
      },
    );
  }
}
