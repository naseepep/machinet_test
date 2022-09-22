import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newtest/models/call_list.dart';

class ChatTTile extends StatefulWidget {
  ChatTTile({required this.data});
  MsgList data;
  @override
  State<ChatTTile> createState() => _ChatTTileState();
}

class _ChatTTileState extends State<ChatTTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(widget.data.avatar.toString()),
        ),
      )
    );
  }
}
