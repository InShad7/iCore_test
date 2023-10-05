import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:icore/model/model.dart';

class CategoryProvider extends ChangeNotifier {
  final api = 'https://fakestoreapi.com/products/categories';

  List<String> categories = [];
  List<MyCategory> categoryList = [];

  String? category1;
  String? category2;
//fetch the category list =====================================================
  Future<void> getCategory() async {
    try {
      log('Inside category fetch');
      final response = await http.get(Uri.parse(api));

      if (response.statusCode == 200) {
        final List<dynamic> result = jsonDecode(response.body);
        categories = List<String>.from(result);
        notifyListeners();
      }
    } catch (e) {
      throw Exception('Failed to fetch category $e');
    }
  }

//fetch each category by their name===========================================
  Future<List<MyCategory>> fetchEachCategory({String? category}) async {
    try {
      log('Inside fetchEachCategory');

      final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$category'),
      );

      if (response.statusCode == 200) {
        log('Inside response');
        final List<dynamic> result = jsonDecode(response.body);
        final List<MyCategory> categoryData =
            result.map((e) => MyCategory.fromJson(e)).toList();
        categoryList = categoryData;
        notifyListeners();
        return categoryData;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception('Failed to fetch category $e');
    }
  }
}
