import 'package:flutter/material.dart';
import 'package:newtest/models/call_list.dart';
import 'package:newtest/models/user.dart';
import 'package:newtest/screens/chat_detail.dart';
import 'package:newtest/widget/chat_tile.dart';
import 'package:newtest/widget/chattile.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);
  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<MsgList> Call = [
    MsgList(
      avatar:
          "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg",
      name: "shamna",
      message: "hai",
      day: "today",
    ),
    MsgList(
        avatar:
            "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg",
        name: "hafis",
        message: "hai",
        day: "yesterday"),
    MsgList(
        avatar:
            "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg",
        name: "hisham",
        message: "hai",
        day: "yesterday"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
          itemCount: Call.length,
          itemBuilder: (BuildContext context, int index) {
            return ChatTile(data: Call[index]);
          }),
    );
  }
}