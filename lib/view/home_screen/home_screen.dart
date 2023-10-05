import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/controller.dart';
import '../widget/custom_app_bar.dart';
import '../widget/tab_view.dart';

double? mHeight;
double? mWidth;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CategoryProvider>(context, listen: false).getCategory();
    });
    mWidth = MediaQuery.of(context).size.width;
    mHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Stack(
        children: [
          const CustomAppBar(),
          Positioned(
            top: mHeight! / 6.7,
            left: 0,
            right: 0,
            child: const Tabview(),
          ),
        ],
      )),
    );
  }
}
