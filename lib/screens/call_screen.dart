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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
        titleSpacing: 10,
        elevation: 0.0,
        title: const SizedBox(
          height: 35.0,
          child: Text(
            "Conversations",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          ElevatedButton(


              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 213, 127, 155),
                  minimumSize: Size(100, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.pinkAccent,
                    ),
                    Text(
                      "Add New",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ))
        ],
        
      ),
      
 
      body: ListView.builder(
          itemCount: Call.length,
          itemBuilder: (BuildContext context, int index) {
            return ChatTile(data: Call[index]);
          }),
    );
  }
}