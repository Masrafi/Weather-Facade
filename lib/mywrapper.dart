import 'dart:convert';
import 'package:http/http.dart';
import 'model.dart';
import 'myinterface.dart';

class MyWrapper implements MyInterface {
  @override
  Future<WeatherModel> doSomething() async {
    Response response = await get(Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?lat=37.785834&lon=-122.406417&appid=700c6acf3c04e16f7b91e0a1e414783e'));
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      return WeatherModel.fromJson(map['main']);
    } else {
      throw Exception('Failed to load user');
    }
  }
}
