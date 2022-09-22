import 'package:flutter/material.dart';
import 'package:newtest/models/call_list.dart';

import 'package:newtest/models/message_model.dart';
import 'package:newtest/models/user.dart';
import 'package:newtest/widget/chat_bubble.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({Key? key, required this.details}) : super(key: key);
  MsgList details;

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  List<Message> messageList = [
    Message(
      isSend: true,
      message: 'hai',
    ),
    Message(
      isSend: false,
      message: 'hai',
    ),
    Message(
      isSend: true,
      message: 'how are you',
    ),
    Message(
      isSend: false,
      message: 'fine',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
        titleSpacing: 0,
        // leading: Padding(
        //   padding: const EdgeInsets.only(right: 250),
        //   child: Icon(Icons.arrow_back,color: Colors.black,),
        // ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(left: 10),
        //     child: CircleAvatar(
        //       radius: 25,
        //       backgroundImage: NetworkImage(widget.details.avatar.toString()),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.only(right: 200),
        //     child: Text(widget.details.name.toString(),style: TextStyle(color: Colors.black),),
        //   ),
        // ],

        leading: Row(
          children: [
            GestureDetector(
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onTap: () => Navigator.pop(context),
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                widget.details.avatar.toString(),
              ),
            ),
          ],
        ),
        title: Column(
           mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.details.name.toString(),
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'online',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: messageList.length,
              itemBuilder: ((context, index) => ChatBubble(
                    message: messageList[index],
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add),
                        radius: 15,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            prefixIconColor: Colors.grey,
                            suffixIconColor: Colors.grey,
                            focusedBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            hintText: 'Write Message',
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.send),
                        radius: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
