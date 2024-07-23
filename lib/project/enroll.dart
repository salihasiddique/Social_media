//
// import 'package:flutter/material.dart';
// import 'package:social_medias/project/home_page.dart';
// import 'package:social_medias/project/model/languages_list.dart';
//
// // void main() {
// //   runApp(MaterialApp(
// //     home: ApplicationForm(lang: ,),
// //     debugShowCheckedModeBanner: false,
// //   ));
// // }
//
// class ApplicationForm extends StatefulWidget {
//   final Languages_List lang;
//    ApplicationForm({required this.lang});
//
//   @override
//   State<ApplicationForm> createState() => _ApplicationFormState();
// }
//
// class _ApplicationFormState extends State<ApplicationForm> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phnoController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController locationController = TextEditingController();
//   final TextEditingController qualificationController = TextEditingController();
//   final TextEditingController courseController = TextEditingController();
//
//   String? selectedDuration;
//   List<String> durationOptions = ['1 Year', '6 Months', '3 Months', '2 Months', '1 Month'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         // child: Stack(
//         //   children: [
//         //     Container(
//         //       width: double.infinity,
//         //       height: double.infinity,
//         //       decoration: BoxDecoration(
//         //         image: DecorationImage(
//         //           fit: BoxFit.cover,
//         //           image: NetworkImage(
//         //                "https://images.unsplash.com/photo-1660927059794-152d06e11016?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
//         //           ),
//         //         ),
//         //       ),
//         //     ),
//            child: Form(
//               key: _formKey,
//               child: Container(
//                 margin: EdgeInsets.all(20),
//                 child: Card(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(10.0),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Text("Application Form", style: TextStyle(fontSize: 20)),
//                         ),
//                       ),
//                       GradientText(
//                         text: "Name",
//                         style: TextStyle(fontSize: 13),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [Colors.black, Colors.red],
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Padding(
//                         padding: EdgeInsets.all(10.0),
//                         child: TextFormField(
//                           controller: nameController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return "Please enter your name";
//                             } else if (!RegExp(r'^[A-Z a-z]+$').hasMatch(value)) {
//                               return "Name must contain only alphabetic characters";
//                             }
//                             return null;
//                           },
//                         ),
//                       ),
//                       GradientText(
//                         text: "Contact Number",
//                         style: TextStyle(fontSize: 13),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [Colors.black, Colors.red],
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Padding(
//                         padding: EdgeInsets.all(10.0),
//                         child: TextFormField(
//                           controller: phnoController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return "Please enter phone number";
//                             } else if (RegExp(r'^\d{10}$').hasMatch(value)) {
//                               return null;
//                             }
//                             return "Invalid phone number";
//                           },
//                         ),
//                       ),
//                       GradientText(
//                         text: "Email",
//                         style: TextStyle(fontSize: 13),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [Colors.black, Colors.red],
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Padding(
//                         padding: EdgeInsets.all(10.0),
//                         child: TextFormField(
//                           controller: emailController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return "Field must not be empty";
//                             }
//                             final gmailRegExp = RegExp(r'^[^@]+@gmail\.com$');
//                             if (!gmailRegExp.hasMatch(value)) {
//                               return "......@gmail.com";
//                             }
//                             return null;
//                           },
//                         ),
//                       ),
//                       GradientText(
//                         text: "Location",
//                         style: TextStyle(fontSize: 13),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [Colors.black, Colors.red],
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Padding(
//                         padding: EdgeInsets.all(10.0),
//                         child: TextFormField(
//                           controller: locationController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return "Please enter location";
//                             } else if (!RegExp(r'^[A-Z a-z]+$').hasMatch(value)) {
//                               return "Location must contain only alphabetic characters";
//                             }
//                             return null;
//                           },
//                         ),
//                       ),
//                       GradientText(
//                         text: "Qualification",
//                         style: TextStyle(fontSize: 13),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [Colors.black, Colors.red],
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Padding(
//                         padding: EdgeInsets.all(10.0),
//                         child: TextFormField(
//                           controller: qualificationController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return "Please enter your qualification";
//                             }
//                             return null;
//                           },
//                         ),
//                       ),
//                       GradientText(
//                         text: "Course",
//                         style: TextStyle(fontSize: 13),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [Colors.black, Colors.red],
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Text()
//                       // Padding(
//                       //   padding: EdgeInsets.all(10.0),
//                       //   child: TextFormField(
//                       //     controller: courseController,
//                       //     decoration: InputDecoration(
//                       //       border: OutlineInputBorder(
//                       //         borderRadius: BorderRadius.circular(10),
//                       //       ),
//                       //     ),
//                       //     validator: (value) {
//                       //       if (value == null || value.isEmpty) {
//                       //         return "Please enter the course";
//                       //       }
//                       //       return null;
//                       //     },
//                       //   ),
//                       // ),
//
//                       Row(
//                         children: [
//                           GradientText(
//                             text: "Duration",
//                             style: TextStyle(fontSize: 13),
//                             gradient: LinearGradient(
//                               begin: Alignment.bottomLeft,
//                               end: Alignment.topRight,
//                               colors: [Colors.black, Colors.red],
//                             ),
//                           ),
//                           SizedBox(width: 15),
//                           Padding(
//                             padding: EdgeInsets.all(10.0),
//                             child: DropdownButton<String>(
//                               value: selectedDuration,
//                               hint: Text("Select Duration"),
//                               items: durationOptions.map((String value) {
//                                 return DropdownMenuItem<String>(
//                                   value: value,
//                                   child: Text(value),
//                                 );
//                               }).toList(),
//                               onChanged: (newValue) {
//                                 setState(() {
//                                   selectedDuration = newValue;
//                                 });
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Container(
//                           width: 400,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(20)),
//                             gradient: LinearGradient(
//                               colors: [Colors.black, Colors.red],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               if (_formKey.currentState!.validate()) {
//                                 Navigator.of(context).pushReplacement(
//                                   MaterialPageRoute(
//                                     builder: (context) => HomePage(),
//                                   ),
//                                 );
//                               }
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               elevation: 0,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(10.0),
//                                 ),
//                               ),
//                             ),
//                             child: Text(
//                               "Submit",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//         //   ],
//         // ),
//       ),
//     );
//   }
// }
//
// class GradientText extends StatelessWidget {
//   final String text;
//   final TextStyle style;
//   final Gradient gradient;
//
//   GradientText({
//     required this.text,
//     required this.style,
//     required this.gradient,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (bounds) {
//         return gradient.createShader(
//           Rect.fromLTWH(0, 0, bounds.width, bounds.height),
//         );
//       },
//       child: Text(
//         text,
//         style: style.copyWith(color: Colors.white),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:social_medias/project/home_page.dart';
import 'package:social_medias/project/model/languages_list.dart';
import 'package:social_medias/project/model/media_list.dart';

class ApplicationFormL extends StatefulWidget {
  final Languages_List lang;
  ApplicationFormL({required this.lang});

  @override
  State<ApplicationFormL> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationFormL> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phnoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController qualificationController = TextEditingController();
  final TextEditingController courseController = TextEditingController();

  String? selectedDuration;
  List<String> durationOptions = ['1 Year', '6 Months', '3 Months', '2 Months', '1 Month'];

  @override
  void initState() {
    super.initState();
    courseController.text = widget.lang.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.all(20),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Application Form", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  GradientText(
                    text: "Name",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        } else if (!RegExp(r'^[A-Z a-z]+$').hasMatch(value)) {
                          return "Name must contain only alphabetic characters";
                        }
                        return null;
                      },
                    ),
                  ),
                  GradientText(
                    text: "Phone Number",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: phnoController,
                      decoration: InputDecoration(
                        hintText: "Enter your phone number",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter phone number";
                        } else if (RegExp(r'^\d{10}$').hasMatch(value)) {
                          return null;
                        }
                        return "Invalid phone number";
                      },
                    ),
                  ),
                  GradientText(
                    text: "Email",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter your email address",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field must not be empty";
                        }
                        final gmailRegExp = RegExp(r'^[^@]+@gmail\.com$');
                        if (!gmailRegExp.hasMatch(value)) {
                          return "......@gmail.com";
                        }
                        return null;
                      },
                    ),
                  ),
                  GradientText(
                    text: "Location",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: locationController,
                      decoration: InputDecoration(
                        hintText: "Enter your location",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter location";
                        } else if (!RegExp(r'^[A-Z a-z]+$').hasMatch(value)) {
                          return "Location must contain only alphabetic characters";
                        }
                        return null;
                      },
                    ),
                  ),
                  GradientText(
                    text: "Qualification",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: qualificationController,
                      decoration: InputDecoration(
                        hintText: "Enter your qualification",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your qualification";
                        }
                        return null;
                      },
                    ),
                  ),
                  GradientText(
                    text: "Course",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: courseController,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Enter the course",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  GradientText(
                    text: "Duration",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: DropdownButtonFormField<String>(
                      value: selectedDuration,
                      onChanged: (newValue) {
                        setState(() {
                          selectedDuration = newValue;
                        });
                      },
                      items: durationOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Select Duration",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Perform form submission or validation logic here
                        }
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText({
    required this.text,
    required this.style,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
