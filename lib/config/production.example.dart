import 'package:coffee_bot/env.dart';

void main() => Production();

class Production extends Env {
  final String url = 'some/slack/url';
}
