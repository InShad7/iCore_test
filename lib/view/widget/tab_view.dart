import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:icore/view/home_screen/home_screen.dart';
import 'package:icore/view/widget/tab_bar.dart';

import '../utils/colors.dart';

class Tabview extends StatelessWidget {
  const Tabview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mHeight,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            height: mHeight! / 18,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: grey,
              indicatorColor: bgApp,
              tabs: myTabs,
            ),
          ),
          Expanded(child: TabBarList()),
        ],
      ),
    );
  }
}
