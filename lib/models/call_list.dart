// To parse this JSON data, do
//
//     final msgList = msgListFromJson(jsonString);

import 'dart:convert';

MsgList msgListFromJson(String str) => MsgList.fromJson(json.decode(str));

String msgListToJson(MsgList data) => json.encode(data.toJson());

class MsgList {
  MsgList({
    this.avatar,
    this.name,
    this.message,
    this.day,
  });

  String? avatar;
  String? name;
  String? message;
  String? day;

  factory MsgList.fromJson(Map<String, dynamic> json) => MsgList(
        avatar: json["Avatar"],
        name: json["name"],
        message: json["message"],
        day: json["Day"],
      );

  Map<String, dynamic> toJson() => {
        "Avatar": avatar,
        "name": name,
        "message": message,
        "Day": day,
      };
}
