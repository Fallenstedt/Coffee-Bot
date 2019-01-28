import 'package:flutter/material.dart';
import 'package:http/http.dart' show post;
import 'package:coffee_bot/env.dart';

class CoffeeButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CoffeeButtonState();
  }
}

class CoffeeButtonState extends State<CoffeeButton> {
  Widget build(BuildContext build) {
    return MaterialButton(
      height: 50,
      minWidth: 50,
      onPressed: coffeeAlert,
      child: Text(
        '☕',
        style: TextStyle(fontSize: 70.0),
      ),
    );
  }

  void coffeeAlert() {
    final String url = Env.value.url;
    const Map<String, String> headers = {'Content-type': 'application/json'};
    const String body = '{"text":"☕ Tasty hot coffee is in the kitchen! ☕"}';
    post(url, headers: headers, body: body);
  }
}
