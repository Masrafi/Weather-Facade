import 'package:flutter/material.dart';
import 'mypresentation.dart';

class View extends StatefulWidget {
  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {


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
        child: const Center(
          child: MyPresentation(),
        ),
      ),
    );
  }
}
