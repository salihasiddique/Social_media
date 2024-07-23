import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_medias/project/Registration.dart';
void main(){
  runApp(MaterialApp(
    home: loaderPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class loaderPage extends StatelessWidget {
  const loaderPage({super.key});
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Container(
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage("assets/images/institute.jpg"),
            height: 300,
            width: 200,
          )
        ),
        SizedBox(height: 40,),
        Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        SizedBox(height: 60,),
        CircularProgressIndicator(color: Colors.red,)
      ],
    ),
  )
);
  }
}
