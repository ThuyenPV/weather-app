import '../../domain/entities/city/city.dart';

extension StringExt on String {
  String get formattedForCompare {
    return split(' ').join('').toLowerCase().trim();
  }
}

extension CityExt on List<City> {
  City get findLongestNameCity {
    final City longestNameCity = reduce(
      (currentMax, city) =>
          city.name!.length > currentMax.name!.length ? city : currentMax,
    );
    return longestNameCity;
  }
}
