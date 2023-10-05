import 'dart:io';

import 'package:flutter/material.dart';
import 'package:icore/view/utils/colors.dart';
import 'package:icore/view/utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'widget/custom_texfiled.dart';

class MyPavs extends StatefulWidget {
 const MyPavs({super.key});

  @override
  State<MyPavs> createState() => _MyPavsState();
}

class _MyPavsState extends State<MyPavs> {
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [myBoxshadow],
          color: white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            InkWell(
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 3, color: red),
                  image: DecorationImage(
                    image: imagePath == null
                        ? const AssetImage('assets/uploadVector.png')
                            as ImageProvider
                        : FileImage(File(imagePath!)),
                    fit: BoxFit.contain,
                    scale: 2,
                  ),
                ),
              ),
              onTap: () {
                pickImage();
              },
            ),
            const CustomTexField(title: "User Name", textfield: true),
            const CustomTexField(title: "Service Category", service: true),
            const CustomTexField(title: "Service Offered", service: false),
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final PickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      setState(() {
        imagePath = PickedFile.path;
      });
    }
  }
}
