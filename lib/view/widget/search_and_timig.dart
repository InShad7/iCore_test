import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/utils.dart';
import 'customer_card.dart';

TextEditingController _searchController = TextEditingController();

class SearchAndTiming extends StatelessWidget {
  const SearchAndTiming({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Search',
                style: TextStyle(
                  color: grey,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _searchController,
                  cursorColor: black,
                  style: TextStyle(color: black),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: black),
                      filled: true,
                      fillColor: white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: grey2),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Education',
                      hintStyle: TextStyle(
                        color: black,
                        fontSize: 18,
                      )),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Timing',
                  style: TextStyle(
                    color: grey,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(width: 1, color: grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.schedule,
                        size: 30,
                      ),
                      Text(
                        ' 1 to 5 ',
                        style: TextStyle(
                          color: black,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Languages',
                  style: TextStyle(
                    color: grey,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 40,
                  width: 240,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(width: 1, color: grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.explore_outlined,
                        size: 30,
                      ),
                      LanguageCard(title: 'Tamil'),
                      LanguageCard(title: 'English'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        kHeight,
        const CustomerCard(),
      ],
    );
  }
}
