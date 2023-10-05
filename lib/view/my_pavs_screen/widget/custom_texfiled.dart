import 'package:flutter/material.dart';
import 'package:icore/view/my_pavs_screen/widget/drop_down.dart';

import '../../utils/colors.dart';

class CustomTexField extends StatelessWidget {
  const CustomTexField(
      {super.key, this.title, this.service = false, this.textfield = false});

  final String? title;
  final bool service;
  final bool textfield;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: grey,
              fontSize: 18,
            ),
          ),
          textfield
              ? const TextFieldOrDropdownContainer(
                  widget: CustomTextFormField(),
                )
              : TextFieldOrDropdownContainer(
                  widget: service
                      ? const DropDownList(service: true)
                      : const DropDownList(service: false),
                ),
        ],
      ),
    );
  }
}

class TextFieldOrDropdownContainer extends StatelessWidget {
  const TextFieldOrDropdownContainer({
    super.key,
    this.widget,
  });

  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
        color: white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: widget,
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: black,
      style: TextStyle(color: black),
      decoration: InputDecoration(
        filled: true,
        fillColor: white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        ),
        hintStyle: TextStyle(
          color: black,
          fontSize: 18,
        ),
      ),
      onChanged: (value) {},
    );
  }
}
