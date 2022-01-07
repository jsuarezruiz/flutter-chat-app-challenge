import 'package:flutter_chat_app_challenge/models/user.dart';

class Message {
  final User? sender;
  final String? text;
  final String? time;

  Message({
    this.sender,
    this.text,
    this.time,
  });
}
