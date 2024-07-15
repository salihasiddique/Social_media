
import 'package:flutter/material.dart';
import 'package:social_medias/project/Registration.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isConfirmVisible = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double horizontalPadding = size.width * 0.1;
    final double containerHeight = size.height * 0.9;

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
            top: size.height * 0.1,
            left: horizontalPadding,
            right: horizontalPadding,
            child: Container(
              width: size.width * 0.8,
              height: containerHeight,
              alignment: Alignment.center,
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
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyling().blckText,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Username", style: TextStyling().greyText),
                        TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter username";
                            }
                            else if(!RegExp(r'^[A-Z a-z]+$').hasMatch(value)){
                              return "Name must contain only alphabetic characters";
                            }
                          },
                        ),
                        SizedBox(height: 20),
                        Text("Phone Number", style: TextStyling().greyText),
                        TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Field must not be empty";
                            } else if (RegExp(r'^\d{10}$').hasMatch(value)) {
                              return null;
                            }
                            return "Please enter valid phone number";
                          },
                        ),
                        SizedBox(height: 20),
                        Text("Password", style: TextStyling().greyText),
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Field must not be empty";
                            } else if (value.length < 7) {
                              return "Password must contain at least 7 characters";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        Text("Confirm Password", style: TextStyling().greyText),
                        TextFormField(
                          controller: confirmController,
                          obscureText: !_isConfirmVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isConfirmVisible = !_isConfirmVisible;
                                });
                              },
                              icon: Icon(
                                _isConfirmVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Field must not be empty";
                            } else if (value!=passwordController.text) {
                              return "Password mismatch";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: (){},
                            child:Text("I forgot my password",
                            style: TextStyling().greyText,
                          ),
                          )
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                               if (_formKey.currentState!.validate()) {

                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Registration(),
                                  ),
                                );
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
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextStyling {
  final TextStyle blckText = TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );
  final TextStyle greyText = TextStyle(color: Colors.grey[800], fontSize: 18);
}
