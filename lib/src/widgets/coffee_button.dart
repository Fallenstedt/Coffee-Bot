import 'package:flutter/material.dart';
import '../blocs/coffee_bloc.dart';

class CoffeeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: coffeeBloc.messageStatus,
        builder: (BuildContext context, snapshot) {
          return MaterialButton(
            onPressed: coffeeBloc.sendMessage,
            height: 50,
            minWidth: 50,
            child: Column(
              children: <Widget>[coffeeCup()],
            ),
          );
        });
  }

  Widget coffeeCup() {
    return new Text(
      '☕',
      style: TextStyle(
        fontSize: 70.0,
      ),
    );
  }
}
