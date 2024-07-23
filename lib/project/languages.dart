// import 'package:flutter/material.dart';
// import 'package:social_medias/project/model/languages_list.dart';
//
// import 'language_Details.dart';
//  void main(){
//    runApp(MaterialApp(
//      home: Languages(),
//      debugShowCheckedModeBanner: false,
//    ));
//  }
// class Languages extends StatefulWidget {
//   const Languages({super.key});
//
//   @override
//   State<Languages> createState() => _LanguagesState();
// }
//
// class _LanguagesState extends State<Languages> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red[400],
//       body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//              crossAxisSpacing: 5,
//             mainAxisSpacing: 5,
//           ),
//           itemCount: languages.length,
//           itemBuilder: (context,index){
//               final lang=languages[index];
//             return GestureDetector(
//                 onTap: (){
//                   Navigator.push(
//                       context,MaterialPageRoute(
//                       builder: (context)=>language_Details(lang:lang)
//                   )
//                   );
//                 },
//                 child: Card(
//                   shadowColor: Colors.black,
//                   elevation: 4.6,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: 50,
//                           right: 80,
//                           bottom: 150,
//                           child:Container(
//                             color: Colors.black12,
//                             child: Text(
//                               lang.lang,style: TextStyle(color: Colors.white),
//                             ),
//                           )
//                           ),
//                     ],
//                   ),
//                 )
//             );
//           })
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
import 'package:social_medias/project/language_Details.dart';
import 'home_page.dart';
import 'model/languages_list.dart';

void main() {
  runApp(MaterialApp(
    home: Languages(),
    debugShowCheckedModeBanner: false,
  ));
}

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {

  Color primaryColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
        }, icon: Icon(Icons.arrow_back_rounded,color: Colors.white,)),
        backgroundColor: Colors.black,
        title: Text("Language",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white),
        ),
      ),
       body:ListView.builder(
           itemCount: languages.length,
           itemBuilder: (context, index) {
          final lang = languages[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageDetails(lang: lang),
                ),
              );
            },
            child:Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(

              ),
              child:Padding(padding:EdgeInsets.all(10.0),
                  child:Card(
                    shadowColor: Colors.black,
                    elevation: 4.6,
                    child: Row(
                      children: [
                       // Icon(Icons.movie_creation,color: Colors.red,),
                        Image.network(lang.image,width: 100,height: double.infinity,),
                        Column(
                          children: [
                            Text(lang.name,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                              ),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(Icons.calendar_month),
                                SizedBox(width: 20,),
                                Text("Duration  ${lang.duration}"),
                              ],),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(Icons.note_add_sharp),
                                SizedBox(width: 20,),
                                Text("14 lessons 6 modules"),
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  )
              ),
            )
          );
        },
       ),
      bottomNavigationBar: LightBottomNavigationBar(
        items:[
          LightBottomNavigationBarItem(
              selectedIcon: Icons.person,
              unSelectedIcon: Icons.person_outline,
              unSelectedIconColor: Colors.white,
              splashColor: primaryColor,
              backgroundShadowColor: primaryColor,
              borderBottomColor: primaryColor,
              selectedIconColor: primaryColor
          ),
          LightBottomNavigationBarItem(
            selectedIcon: Icons.home,
            unSelectedIcon: Icons.home_outlined,
            unSelectedIconColor: Colors.white,
            splashColor: primaryColor,
            backgroundShadowColor: primaryColor,
            borderBottomColor: primaryColor,
            selectedIconColor: primaryColor,
          ),
          LightBottomNavigationBarItem(
              selectedIcon: Icons.settings,
              unSelectedIcon: Icons.settings_outlined,
              unSelectedIconColor: Colors.white,
              splashColor: primaryColor,
              backgroundShadowColor: primaryColor,
              borderBottomColor: primaryColor,
              selectedIconColor: primaryColor
          ),
          LightBottomNavigationBarItem(
              selectedIcon: Icons.info,
              unSelectedIcon: Icons.info_outline,
              unSelectedIconColor: Colors.white,
              splashColor: primaryColor,
              backgroundShadowColor: primaryColor,
              borderBottomColor: primaryColor,
              selectedIconColor: primaryColor
          )

        ],
        onSelected: (index){
          print('tab $index');
        },

      ),
    );
  }
}