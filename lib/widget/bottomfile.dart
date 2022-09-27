import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomFile extends StatelessWidget {
  const BottomFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        enableDrag: false,
        shape: const RoundedRectangleBorder(

          borderRadius: const BorderRadius.vertical(
            top: const Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.white,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 270,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Naseeba',
                              style: TextStyle(
                                
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(Icons.edit),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row( 
                          children: [
                            const CircleAvatar(backgroundColor:Colors.red,
                              child: const Icon(Icons.person_pin_circle_rounded,),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Account',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                          
                        ),
                           const SizedBox(
                          height: 12,
                        ),
                         Row( 
                          children: [
                            const CircleAvatar(backgroundColor: Colors.blue,
                              child: Icon(Icons.notifications_none,color: Colors.white,),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Notifications',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                          
                        ),
                           const SizedBox(
                          height: 12,
                        ),
                         Row( 
                          children: [
                            const CircleAvatar(backgroundColor: const Color.fromARGB(255, 245, 194, 54),
                              child: const Icon(Icons.help_outline,color: Colors.white,),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Help & Legal',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                          
                        ),
                           const SizedBox(
                          height: 12,
                        ),
                         Row( 
                          children: [
                            const CircleAvatar(backgroundColor: const Color.fromARGB(255, 147, 255, 150),
                              child: const Icon(Icons.file_upload_outlined,color: Colors.white,),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Tell a Friend',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                          
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}