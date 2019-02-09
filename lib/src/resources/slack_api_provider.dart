import '../../env.dart';
import 'package:http/http.dart' show post;
import '../models/slack_model.dart';

class SlackApiProvider {
  Env env = Env.value;

  Future<SlackModel> sendAlert() async {
    const Map<String, String> headers = {'Content-type': 'application/json'};
    const String body = '{"text":"☕ Tasty hot coffee is in the kitchen! ☕"}';

    final response = await post(Env.value.url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return SlackModel(response.body, 200);
    } else {
      throw Exception('failed to send message');
    }
  }
}
