class SlackModel {
  int status;
  String _message;

  SlackModel(this._message, this.status);

  String get message => _message;
}
