import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  @JsonSerializable(explicitToJson: false)
  const factory City({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'lat') String? lat,
    @JsonKey(name: 'lng') String? lng,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'admin1') String? admin1,
    @JsonKey(name: 'admin2') String? admin2,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
