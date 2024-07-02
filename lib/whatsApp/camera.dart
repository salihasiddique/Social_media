import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: camera(),
    debugShowCheckedModeBanner: false,
  ));
}
class camera extends StatelessWidget {
  const camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("camera"),
    );
  }
}
