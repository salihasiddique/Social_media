import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: notification(),
    debugShowCheckedModeBanner: false,
  ));
}
class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(Icons.notifications)
    );
  }
}
