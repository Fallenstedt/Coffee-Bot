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
  String status = "";

  Widget build(BuildContext build) {
    return MaterialButton(
      height: 50,
      minWidth: 50,
      onPressed: coffeeAlert,
      child: Column(
        children: <Widget>[alert(status), button()],
      ),
    );
  }

  void coffeeAlert() {
    final String url = Env.value.url;
    const Map<String, String> headers = {'Content-type': 'application/json'};
    const String body = '{"text":"☕ Tasty hot coffee is in the kitchen! ☕"}';
    _setStatus('Sending...', 0);
    post(url, headers: headers, body: body).then((success) {
      _setStatus('Success!', 1);
      _setStatus('', 5);
    }).catchError((err) {
      _setStatus('Please try again', 2);
      _setStatus('', 4);
    });
  }

  void _setStatus(String message, int delay) {
    new Future.delayed(
        Duration(seconds: delay), () => setState(() => this.status = message));
  }

  Widget alert(String message) {
    print('hello!');
    print(message);
    return new Text(
      message,
      style: TextStyle(fontSize: 40.0),
    );
  }

  Widget button() {
    return new Text(
      '☕',
      style: TextStyle(
        fontSize: 70.0,
      ),
    );
  }
}
