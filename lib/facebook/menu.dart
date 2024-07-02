import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: menu(),
    debugShowCheckedModeBanner: false,
  ));
}
class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(Icons.menu)
    );
  }
}
