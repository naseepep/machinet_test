
import 'package:flutter/material.dart';

import 'package:newtest/models/message_model.dart';

class ChatBubble extends StatefulWidget {
  @override
  State<ChatBubble> createState() => _ChatBubbleState();
  Message message;
  ChatBubble({required this.message});
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
       alignment:
          widget.message.isSend! ? Alignment.centerRight : Alignment.centerLeft,

      child: ConstrainedBox(
        
        constraints: BoxConstraints(
          
          maxWidth: MediaQuery.of(context).size.width ,
          minWidth: 150,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          color: Color.fromARGB(255, 108, 144, 206),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 6, right: 26, top: 5, bottom: 18),
                //Padding(
                // padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.message.message.toString(),
                  style: TextStyle(fontSize: 16),
                ),
              ),
           ],
          ),
        ),
      ),
    );
  }
}
