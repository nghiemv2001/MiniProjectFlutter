import 'package:dio/dio.dart';
import 'package:miniprojectflutter/widget/modal/listWeather.dart';

class ApiRepository {
  static Future<Weather> callAPIWeather() async {
    // final dio = Dio();
    try {
      final dio = Dio();
      final res = await dio.get(
          "https://api.openweathermap.org/data/2.5/weather?lat=10.0457&lon=105.7808&&units=metric&appid=cb42a87bf2a95e1fda5b6e1f35cb8aa5");
      final data = res.data;
      Weather result = Weather.fromJson(data);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<WeatherDentail>> callAPIDetailWeather() async {
    // final dio = Dio();
    try {
      final dio = Dio();
      final res = await dio.get(
          "https://api.openweathermap.org/data/2.5/forecast?lat=10.0457&lon=105.7808&&units=metric&appid=cb42a87bf2a95e1fda5b6e1f35cb8aa5");
      final listData = res.data['list'];
      List<WeatherDentail> result = List<WeatherDentail>.from(
          listData.map((e) => WeatherDentail.fromJson(e)).toList());
      print(result);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
