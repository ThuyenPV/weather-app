import 'package:injectable/injectable.dart';

import '../../domain/entities/city/city.dart';
import '../../domain/repository/city_repository.dart';
import '../datasources/city_api.dart';

@Injectable(as: CityRepository)
class CityRepositoryImpl implements CityRepository {
  final CityApi _cityApi;

  CityRepositoryImpl(this._cityApi);

  @override
  Future<List<City>> fetchCities(String path) async {
    final res = await _cityApi.fetchCities(path);
    return res;
  }
}
