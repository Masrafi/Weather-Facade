import 'package:weatherinterface/model.dart';
import 'package:weatherinterface/mywrapper.dart';

class MyPresenter {
  final MyWrapper myWrapper;
  MyPresenter(this.myWrapper);

  Future<WeatherModel> incrementCounter() {
    return myWrapper.doSomething();
  }
}
