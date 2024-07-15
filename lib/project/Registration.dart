
import 'package:flutter/material.dart';


import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: Registration(),
    debugShowCheckedModeBanner: false,
  ));
}

class Registration extends StatefulWidget {
  const Registration({super.key});
  @override
  State<Registration> createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.black],
          ),
        ),
      ),
      Positioned(
        bottom: 100,
        top:100,
        right: 100,
        left:100,
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.2,
              spreadRadius: 2.0,
            )
          ],
          border: Border.all(color: Colors.white70),
        ),

        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome",
                  style: TextStyling().blckText,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Please register with your information",
                  style: TextStyling().greyText,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Email Address",
                style: TextStyling().greyText,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Password",
                style: TextStyling().greyText,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "I forgot my password",
                    style: TextStyling().greyText,
                  ),
                ),
              ),
              SizedBox(height: 30),
               Align(
                 alignment: Alignment.center,
                 child:  ElevatedButton(
                   onPressed: () {
                     String email = emailController.text;
                     String password = passwordController.text;
                     if (email.isNotEmpty && password.isNotEmpty) {
                       if (email.contains('@')) {
                         if(password.length>=7){
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
                         }
                         else{
                           showAlertDialog(context, "Password must contain at least 7 characters");
                         }
                       } else {
                         showAlertDialog(context, 'Invalid Email');
                       }
                     } else {
                       showAlertDialog(context, 'Field must not be empty');
                     }
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.transparent,
                     shape: RoundedRectangleBorder(
                       side: BorderSide(width: 80),
                       borderRadius: BorderRadius.all(
                         Radius.circular(30.0),
                       ),
                     ),
                   ),
                   child: Text(
                     "Register",
                     style: TextStyle(color: Colors.white, fontSize: 18),
                   ),
                 ),
               )

            ],
          ),
        ),
      ),
      ),
      ])
    );
  }
  void showAlertDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
class TextStyling {
  final TextStyle blckText = TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w500);
  final TextStyle greyText = TextStyle(color: Colors.grey[800], fontSize: 18);
}

