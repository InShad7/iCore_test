import 'package:flutter/material.dart';
import 'package:icore/view/utils/utils.dart';
import '../utils/colors.dart';
import 'search_and_timig.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [myBoxshadow],
            color: white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
          child: const SearchAndTiming(),
        ),
      ],
    );
  }
}
