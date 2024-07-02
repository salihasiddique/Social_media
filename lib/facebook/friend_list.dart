import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: frndlist(),
    debugShowCheckedModeBanner: false,
  ));
}
class frndlist extends StatelessWidget {
  const frndlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Text("friends list"),
    );
  }
}
