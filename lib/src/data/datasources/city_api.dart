import 'package:injectable/injectable.dart';

import '../../domain/entities/city/city.dart';
import '../../source/local/city_local.dart';

@injectable
class CityApi {
  final CityLocal cityLocal;

  @factoryMethod
  CityApi(this.cityLocal);

  Future<List<City>> fetchCities(String path) {
    return cityLocal.loadCities(path);
  }
}
