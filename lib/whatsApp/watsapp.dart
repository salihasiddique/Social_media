import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 void main(){
   runApp(MaterialApp(home:
   watsapp(),
   debugShowCheckedModeBanner: false,
   ));
 }
class watsapp extends StatelessWidget {
  var contact=["saliha","siddique","salma","nissam","lulu","silal","nisma","bilal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calls",style: TextStyle(
          color: Colors.white,
        ),),
        leading: Icon(Icons.camera_alt,),
        centerTitle: true,
        backgroundColor: Colors.teal[800],
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          title: Text("${contact[index]}"),
          trailing: Icon(Icons.videocam),
        );

      },
      itemCount: contact.length,)
    );
  }
}
