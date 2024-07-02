import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: flag(),
    debugShowCheckedModeBanner: false,
  ));
}
class flag extends StatelessWidget {
  const flag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("flag"),
    );
  }
}
