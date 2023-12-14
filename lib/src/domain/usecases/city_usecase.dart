import 'package:injectable/injectable.dart';

import '../entities/city/city.dart';
import '../repository/city_repository.dart';

@injectable
class CityUsecase {
  final CityRepository _cityRepository;

  CityUsecase(this._cityRepository);

  Future<List<City>> fetchCities(String path) async {
    return _cityRepository.fetchCities(path);
  }
}
