import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newtest/models/call_list.dart';
import 'package:newtest/models/user.dart';
import 'package:newtest/screens/chat_detail.dart';

class ChatTile extends StatefulWidget {
  ChatTile({required this.data});
  MsgList data;
  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChatDetail(
                  details: widget.data,
                )),
      ),
      child: ListTile(
        title: Text(widget.data.name.toString()),
        subtitle: Row(
          children: [
            Flexible(
              child: Text(
                widget.data.message.toString(),
              ),
            )
          ],
        ),
        trailing: Text(widget.data.day.toString()),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            widget.data.avatar.toString(),
          ),
        ),
      ),
      
    );
    
  }
}
