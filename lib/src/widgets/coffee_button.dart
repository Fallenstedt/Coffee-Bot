import 'package:flutter/material.dart';
import '../blocs/coffee_provider.dart';

class CoffeeButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = CoffeeProvider.of(context);
    
    return StreamBuilder(
        stream: bloc.messageStatus,
        builder: (BuildContext context, snapshot) {
          return MaterialButton(
            onPressed: bloc.sendMessage,
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
