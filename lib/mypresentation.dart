import 'package:flutter/material.dart';

import 'model.dart';
import 'mywrapper.dart';

class MyPresentation extends StatefulWidget {
  const MyPresentation({Key? key}) : super(key: key);

  @override
  State<MyPresentation> createState() => _MyPresentationState();
}

class _MyPresentationState extends State<MyPresentation> {
  late MyWrapper mywrapper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mywrapper = MyWrapper();
  }
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<WeatherModel>(
      future: mywrapper.doSomething(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text('temp: ${snapshot.data!.temp.toString()}'),
              Text('tempMax: ${snapshot.data!.tempMax.toString()}'),
              Text('tempMin: ${snapshot.data!.tempMin.toString()}'),
              const Spacer(),
            ],
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner
        return const CircularProgressIndicator();
      },
    );
  }
}
