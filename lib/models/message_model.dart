

// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
  Message({
    this.message,
    this.isSend,
  });

  String? message;
  bool? isSend;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        message: json["message"],
        isSend:json["isSend"]
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "isSend":isSend
      };
}
