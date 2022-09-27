import 'package:flutter/material.dart';
import 'package:newtest/widget/bottomfile.dart';


class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Stack(
        children: [
      Image(
        fit:BoxFit.fitHeight,
         image: NetworkImage("https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg"),
         height: double.infinity,),
         Align(alignment:Alignment.bottomCenter,child:BottomFile(),),
        ],
      ),
        
    
    );
  }
}
