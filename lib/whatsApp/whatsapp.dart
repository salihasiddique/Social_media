import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_medias/whatsApp/camera.dart';
import 'package:social_medias/whatsApp/whatsApp_ststus.dart';
import 'package:social_medias/whatsApp/whatsapp_chat.dart';
import 'watsapp.dart';



void main(){
  runApp(MaterialApp(
    home: whatsapp(),
    debugShowCheckedModeBanner: false,
  ));
}
class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text(
              "WhatsApp", style: TextStyle(color: Colors.white, fontSize: 35),),
            actions: [
              Icon(Icons.search, color: Colors.white,),
              SizedBox(width: 10,),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("New Group",)),
                  PopupMenuItem(child: Text("New BoardCast",),),
                  PopupMenuItem(child: Text("Linked Devices",),),
                  PopupMenuItem(child: Text("Starred"),),
                  PopupMenuItem(child: Text("Settings"))
                ];
              }, color: Colors.white)
            ],
            bottom: TabBar(tabs: [
              Icon(Icons.camera_alt, color: Colors.white,),
              Text("Chats", style: TextStyle(color: Colors.white)),
              Text("Status", style: TextStyle(color: Colors.white)),
              Text("Calls", style: TextStyle(color: Colors.white))
            ]

            ),
          ),
          body: TabBarView(children: [
            camera(),
            contact(),
            WhatsappStatus(),
            watsapp()
          ])


      ),
    );
  }
}