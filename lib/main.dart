import 'package:flutter/material.dart';
import 'package:weatherinterface/mypresenter.dart';
import 'mywrapper.dart';
import 'view.dart';

void main() {
  final MyWrapper wrapper = MyWrapper();
  final MyPresenter presenter = MyPresenter(wrapper);
  runApp(MyApp(presenter));
}

class MyApp extends StatelessWidget {
  final MyPresenter _presenter;
  MyApp(this._presenter);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: View(_presenter),
    );
  }
}
