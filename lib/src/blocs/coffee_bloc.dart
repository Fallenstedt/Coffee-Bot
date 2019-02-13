import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/slack_model.dart';

class CoffeeBloc {
  final _repository = Repository();
  final _messagePoster = PublishSubject<SlackModel>();

  Observable<SlackModel> get messageStatus => _messagePoster.stream;

  sendMessage() async {
    SlackModel response = await _repository.sendAlert();
    _messagePoster.sink.add(response);
  }

  dispose() {
    _messagePoster.close();
  }
}
