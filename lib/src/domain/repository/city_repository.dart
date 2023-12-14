import '../entities/city/city.dart';

abstract class CityRepository {
  Future<List<City>> fetchCities(String path);
}
