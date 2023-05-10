import 'package:flutter/material.dart';
import 'package:weatherinterface/model.dart';
import 'package:weatherinterface/repo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          width: double.infinity,
          height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FutureBuilder<WeatherModel>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text('temp: ${snapshot.data!.temp.toString()}'),
                    Text('tempMax: ${snapshot.data!.tempMax.toString()}'),
                    Text('tempMin: ${snapshot.data!.tempMin.toString()}'),
                    Spacer(),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
