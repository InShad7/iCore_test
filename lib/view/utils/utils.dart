import 'package:flutter/material.dart';

const kHeight = SizedBox(height: 10);
const width10 = SizedBox(width: 10);

final myBoxshadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 2,
  blurRadius: 5,
  offset: const Offset(0, 3),
);

final myBoxshadow2 = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 3,
  offset: const Offset(0, 4),
);
