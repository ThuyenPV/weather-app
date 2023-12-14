// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  String? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  String? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin1')
  String? get admin1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin2')
  String? get admin2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'lat') String? lat,
      @JsonKey(name: 'lng') String? lng,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'admin1') String? admin1,
      @JsonKey(name: 'admin2') String? admin2});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? country = freezed,
    Object? admin1 = freezed,
    Object? admin2 = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      admin1: freezed == admin1
          ? _value.admin1
          : admin1 // ignore: cast_nullable_to_non_nullable
              as String?,
      admin2: freezed == admin2
          ? _value.admin2
          : admin2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'lat') String? lat,
      @JsonKey(name: 'lng') String? lng,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'admin1') String? admin1,
      @JsonKey(name: 'admin2') String? admin2});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? country = freezed,
    Object? admin1 = freezed,
    Object? admin2 = freezed,
  }) {
    return _then(_$CityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      admin1: freezed == admin1
          ? _value.admin1
          : admin1 // ignore: cast_nullable_to_non_nullable
              as String?,
      admin2: freezed == admin2
          ? _value.admin2
          : admin2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: false)
class _$CityImpl implements _City {
  const _$CityImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'lat') this.lat,
      @JsonKey(name: 'lng') this.lng,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'admin1') this.admin1,
      @JsonKey(name: 'admin2') this.admin2});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'lat')
  final String? lat;
  @override
  @JsonKey(name: 'lng')
  final String? lng;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'admin1')
  final String? admin1;
  @override
  @JsonKey(name: 'admin2')
  final String? admin2;

  @override
  String toString() {
    return 'City(name: $name, lat: $lat, lng: $lng, country: $country, admin1: $admin1, admin2: $admin2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.admin1, admin1) || other.admin1 == admin1) &&
            (identical(other.admin2, admin2) || other.admin2 == admin2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, lat, lng, country, admin1, admin2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'lat') final String? lat,
      @JsonKey(name: 'lng') final String? lng,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'admin1') final String? admin1,
      @JsonKey(name: 'admin2') final String? admin2}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'lat')
  String? get lat;
  @override
  @JsonKey(name: 'lng')
  String? get lng;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'admin1')
  String? get admin1;
  @override
  @JsonKey(name: 'admin2')
  String? get admin2;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
