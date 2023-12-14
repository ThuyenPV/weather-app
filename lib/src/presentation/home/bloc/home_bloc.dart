import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:injectable/injectable.dart';

import '../../../core/extensions/string_ext.dart';
import '../../../domain/entities/city/city.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../domain/usecases/city_usecase.dart';
import '../../../utils/uidata.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CityUsecase _cityUsecase;

  HomeBloc(this._cityUsecase) : super(HomeInitial([])) {
    on<AddSearchHistoryResultEvent>(_mapAddSearchHistoryResultEvent);
    on<AddMicrophoneAudioEvent>(_mapAddMicrophoneEvent);
  }

  FutureOr<void> _mapAddSearchHistoryResultEvent(
      AddSearchHistoryResultEvent event, Emitter<HomeState> emit) {
    final currentState = state;
    final currentLists = currentState.weathers;
    final newWeather = event.weather;
    var newLists = currentLists;
    final newTimeSpan = DateTime.now().microsecondsSinceEpoch;

    if (currentLists.isEmpty) {
      emit(AddSearchHistorySuccess([newWeather], newTimeSpan));
    } else {
      final isExisted = currentLists
          .firstWhereOrNull((e) => e.location?.id == newWeather.location?.id);

      if (isExisted != null) {
        currentLists.remove(isExisted);
      }
      newLists = [...currentLists, newWeather];

      emit(AddSearchHistorySuccess(newLists, newTimeSpan));
    }
  }

  FutureOr<void> _mapAddMicrophoneEvent(
      AddMicrophoneAudioEvent event, Emitter<HomeState> emit) async {
    final audioText = event.audioText;
    final newTimeSpan = DateTime.now().microsecondsSinceEpoch;
    final currentState = state;
    final currentLists = currentState.weathers;
    final List<City> cities = await _cityUsecase.fetchCities(UIData.cities);

    final audioInputTexts = audioText.formattedForCompare;
    final audioTextSplit = audioText.split(' ');
    final isLongAudioText = audioTextSplit.length > 4;

    if (isLongAudioText) {
      final citiesFound = cities.where((e) {
        final cityFormated = e.name?.formattedForCompare ?? '';
        return partialRatio(cityFormated, audioInputTexts) == 100;
      }).toList();
      emit(AddMicrophoneAudioSuccess(
        citiesFound.findLongestNameCity.name ?? '',
        newTimeSpan,
        currentLists,
      ));
    } else {
      final citiesFound = cities.firstWhereOrNull((e) => audioTextSplit.any(
          (audio) => audio.formattedForCompare == e.name?.formattedForCompare));
      if (citiesFound != null) {
        emit(AddMicrophoneAudioSuccess(
          citiesFound.name ?? '',
          newTimeSpan,
          currentLists,
        ));
      }
    }
  }
}
