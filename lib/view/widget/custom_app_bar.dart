// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//   });
//   final Size preferredSize = const Size.fromHeight(60.0);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       title: const Text('PAV-S'),
//       leading:const  CircleAvatar(
//         backgroundImage: AssetImage('assets/flutter logo.png'),
//       ),
//       actions: [
//         Row(
//           children: [
//             IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: () {},
//             ),
//             CircleAvatar(
//               backgroundColor: Colors.white,
//               child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.more_horiz,
//                 ),
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';
import '../utils/colors.dart';
import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          height: mHeight! / 4.9,
          width: double.infinity,
          decoration: const BoxDecoration(gradient: appbarColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/flutter logo.png'),
                  ),
                  width10,
                  Text(
                    "PAV-S",
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w500,
                      fontSize: mHeight! / 28,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: white,
                    ),
                    onPressed: () {},
                  ),
                  CircleAvatar(
                    backgroundColor: white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: bgApp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
