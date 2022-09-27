

import 'package:flutter/material.dart';

import 'package:newtest/screens/call_screen.dart';
import 'package:newtest/screens/profile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screen = [CallScreen(),
   Text('channel'),ProfileView(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
         screen[index],
      
                   
       
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leadingWidth: 100,
      //   titleSpacing: 10,
      //   elevation: 0.0,
      //   title: const SizedBox(
      //     height: 35.0,
      //     child: Text(
      //       "Conversations",
      //       style: TextStyle(
      //           fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      //     ),
      //   ),
      //   actions: [
      //     ElevatedButton(


      //         onPressed: () {},
      //         style: ElevatedButton.styleFrom(
      //             primary: Color.fromARGB(255, 213, 127, 155),
      //             minimumSize: Size(100, 10),
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(40),
      //             )),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             children: const [
      //               Icon(
      //                 Icons.add,
      //                 color: Colors.pinkAccent,
      //               ),
      //               Text(
      //                 "Add New",
      //                 style: TextStyle(color: Colors.black),
      //               ),
      //             ],
      //           ),
      //         ))
      //   ],
        
      // ),
      
      
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.message), label: "Chats"),
          NavigationDestination(
              icon: Icon(Icons.group_work), label: "Channels"),
          NavigationDestination(
              icon: Icon(Icons.account_box), label: "Profile"),
        ],
        selectedIndex: index,
        onDestinationSelected: (index) => setState(
          () => this.index = index,
        ),
      ),
      
      
    );
  }
}
