import 'package:cuaca/model/cuaca_model.dart';
import 'package:dio/dio.dart';

class CuacaService {
  final dio = Dio();

  Future<CuacaModel> getCurrentWeather(String cityName) async {
    // HTTP Request
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=969116c6a2215379c38057138b6d279a&units=metric');
    print(response.requestOptions.path);
    // Convert
    return CuacaModel.fromJson(response.data);
  }
}
