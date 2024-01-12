import 'package:flutter/material.dart';
import 'package:miniprojectflutter/repositories/api_reposotory.dart';
import 'package:miniprojectflutter/widget/modal/listWeather.dart';

class WeatherProvider extends ChangeNotifier {
  Future<Weather> getWeatherCurrent() async {
    Weather result = await ApiRepository.callAPIWeather();
    return result;
  }

  Future<List<WeatherDentail>> getWeatherDetail() async {
    List<WeatherDentail> result = await ApiRepository.callAPIDetailWeather();
    return result;
  }
}
