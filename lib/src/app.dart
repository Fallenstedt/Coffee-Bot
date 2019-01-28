import 'package:flutter/material.dart';
import 'widgets/coffee_button.dart';
import '../env.dart';

class App extends StatelessWidget {
  final Env env;
  App(this.env);

  Widget build(BuildContext build) {
    return new MaterialApp(
      title: "Coffee Bot",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Coffee Bot"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [new CoffeeButton()],
          ),
        ),
      ),
    );
  }
}
