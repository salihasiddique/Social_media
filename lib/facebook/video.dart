import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: fbvd(),
    debugShowCheckedModeBanner: false,
  ));
}
class fbvd extends StatelessWidget {
  const fbvd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("video"),
    );
  }
}
