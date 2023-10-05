import 'package:flutter/material.dart';
import 'package:icore/view/my_pavs_screen/my_pavs_screen.dart';
import 'package:icore/view/utils/colors.dart';

import '../utils/utils.dart';
import 'details_card.dart';

TabBarView TabBarList() {
  return TabBarView(children: [
    Column(
      children: const [
        kHeight,
        Expanded(child: SizedBox()),
      ],
    ),
    Column(children: const [
      kHeight,
      Expanded(child: DetailsCard()),
    ]),
    Column(children:  [
      kHeight,
      Expanded(child: MyPavs()),
    ]),
  ]);
}

final List<Tab> myTabs = <Tab>[
  Tab(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.chat_bubble_outline,
          color: grey,
          size: 20,
        ),
        const Text('Chat'),
      ],
    ),
  ),
  Tab(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.ads_click,
          color: grey,
          size: 20,
        ),
        const Text('PAVS'),
      ],
    ),
  ),
  Tab(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.person_outlined,
          color: grey,
          size: 20,
        ),
        const Text('My PAVS'),
      ],
    ),
  ),
];
