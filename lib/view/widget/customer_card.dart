import 'package:flutter/material.dart';
import 'package:icore/view/home_screen/home_screen.dart';

import '../utils/colors.dart';
import '../utils/utils.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: mHeight,
      decoration: BoxDecoration(
        color: grey2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: white2,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: mHeight! / 6.8,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/dp.jpg'),
                    radius: 28,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bala Consulting Softwares',
                            style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          width10,
                          Container(
                            height: 30,
                            width: 34,
                            decoration: BoxDecoration(
                              color: green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.done,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Rating & Review',
                            style: TextStyle(
                              color: grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          StarIcon(color: yellow),
                          StarIcon(color: yellow),
                          StarIcon(color: yellow),
                          StarIcon(color: yellow),
                          StarIcon(color: grey2),
                        ],
                      ),
                      SizedBox(
                        width: 270,
                        child: Text(
                          'Skills: Java, C, C++, C#, Ruby, PHP, E-com',
                          style: TextStyle(
                            color: grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StarIcon extends StatelessWidget {
  const StarIcon({super.key, this.color});
  final color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
    );
  }
}

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      decoration: BoxDecoration(
        color: grey2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
