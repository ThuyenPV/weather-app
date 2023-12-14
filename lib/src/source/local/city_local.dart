import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/city/city.dart';

@injectable
class CityLocal {
  Future<List<City>> loadCities(String path) async {
    try {
      final data = await rootBundle.loadString(path);
      final List<dynamic> json = jsonDecode(data);
      final cities = json.map((e) => City.fromJson(e)).toList();
      return cities;
    } catch (e) {
      return [];
    }
  }
}
