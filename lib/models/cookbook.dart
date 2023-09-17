import 'dart:convert';

import 'package:cookbook/models/cuisine.dart';
import 'package:flutter/services.dart';

class CookBook {
  static final List<Cuisine> cuisines = [];

  static Future<void> readJson() async {
    try {
      final String response = await rootBundle.loadString('data/data.json');
      final Map<String, dynamic> jsonData = json.decode(response);
      for (var key in jsonData.keys) {
        cuisines.add(Cuisine.fromJson(jsonData[key]));
      }
    } catch (error) {
      cuisines.clear();
    }
  }
}
