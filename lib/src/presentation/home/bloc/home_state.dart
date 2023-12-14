part of 'home_bloc.dart';

sealed class HomeState {
  final List<Weather> weathers;

  HomeState({this.weathers = const []});
}

final class HomeInitial extends HomeState {
  HomeInitial(List<Weather> weathers) : super(weathers: weathers);
}

final class AddSearchHistorySuccess extends HomeState {
  final int timespan;

  AddSearchHistorySuccess(List<Weather> weathers, this.timespan)
      : super(weathers: weathers);
}

final class AddMicrophoneAudioSuccess extends HomeState {
  final String audioText;
  final int timespan;

  AddMicrophoneAudioSuccess(
      this.audioText, this.timespan, List<Weather> weathers)
      : super(weathers: weathers);
}
