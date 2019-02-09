import 'dart:async';
import './slack_api_provider.dart';
import '../models/slack_model.dart';

class Repository {
  final slackApiProvider = SlackApiProvider();

  Future<SlackModel> sendAlert() => slackApiProvider.sendAlert();
}
