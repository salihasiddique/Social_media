//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
// import 'package:readmore/readmore.dart';
// import 'package:social_medias/project/enroll.dart';
// import 'languages.dart';
// import 'model/languages_list.dart';
//
//
// class LanguageDetails extends StatelessWidget {
//   final Languages_List lang;
//   Color primaryColor = Colors.red;
//
//   LanguageDetails({required this.lang});
//
//   get index => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//
//       ),
//       body:CustomScrollView(
//         scrollDirection: Axis.vertical,
//     slivers: [
//       SliverAppBar(
//         leading:
//         IconButton(onPressed: (){
//           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Languages()));
//         }, icon: Icon(Icons.arrow_back_rounded,color: Colors.white,)),
//       floating: true,
//         pinned: false,
//       ),
//
//       SliverList(delegate: SliverChildListDelegate(
//         [
//           Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CarouselSlider(items:
//                   [
//                     Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               "https://images.unsplash.com/photo-1546410531-bb4caa6b424d?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                         "https://images.unsplash.com/photo-1501504905252-473c47e087f8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               "https://images.unsplash.com/photo-1670552509890-6c784a03e2b9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               "https://images.unsplash.com/photo-1670552509890-6c784a03e2b9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ],
//                       options:CarouselOptions(
//                         height: 200,
//                         aspectRatio: 16 / 9,
//                         initialPage: 0,
//                         enableInfiniteScroll: true,
//                         autoPlay: true,
//                         viewportFraction: 0.8,
//                         autoPlayInterval: Duration(seconds: 2),
//                         autoPlayCurve: Curves.easeIn,
//                         enlargeCenterPage: true,
//                         enlargeFactor: 0.3,
//                         scrollDirection: Axis.horizontal,
//                       ),
//                   ),
//                   Text("Welcome to ${lang.name}",
//                     style: TextStyling().HeadingText,
//                   ),
//                   SizedBox(height: 20,),
//                   Row(
//                     children: [
//                       Icon(Icons.timelapse_sharp),
//                       Text(lang.duration,style: TextStyling().SubHeadingText),
//                     ],
//                   ),
//                   SizedBox(height: 20,),
//                   Row(
//                     children: [
//                       Icon(Icons.attach_money),
//                       Text(lang.fees.toString(),style: TextStyling().SubHeadingText),
//
//                     ],
//                   ),
//                 ReadMoreText(lang.description,
//                 trimLines: 3,
//                   colorClickableText: Colors.red,
//                   trimMode: TrimMode.Line,
//                   trimCollapsedText: 'Read more',
//                   trimExpandedText: 'Read less',
//                   style: TextStyling().Description,
//                 ),
//                 //  Text(lang.description,style: TextStyling().Description),
//                   SizedBox(height: 40,),
//                   Center(
//                     child:
//                     ElevatedButton(onPressed: (){
//                       final lang=languages[index];
//                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ApplicationForm(lang:lang)));
//                     },
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               side: BorderSide(color: Colors.red),
//                             )
//                         ),
//                         child: Text("Enroll Now ->",style: TextStyle(color: Colors.red),)),
//                   )
//                 ],
//           ) ,
//         ]
//       ),
//       )
//     ],
//
//
//       ),
//       bottomNavigationBar: LightBottomNavigationBar(
//         items:[
//           LightBottomNavigationBarItem(
//               selectedIcon: Icons.person,
//               unSelectedIcon: Icons.person_outline,
//               unSelectedIconColor: Colors.white,
//               splashColor: primaryColor,
//               backgroundShadowColor: primaryColor,
//               borderBottomColor: primaryColor,
//               selectedIconColor: primaryColor
//           ),
//           LightBottomNavigationBarItem(
//             selectedIcon: Icons.home,
//             unSelectedIcon: Icons.home_outlined,
//             unSelectedIconColor: Colors.white,
//             splashColor: primaryColor,
//             backgroundShadowColor: primaryColor,
//             borderBottomColor: primaryColor,
//             selectedIconColor: primaryColor,
//           ),
//           LightBottomNavigationBarItem(
//               selectedIcon: Icons.settings,
//               unSelectedIcon: Icons.settings_outlined,
//               unSelectedIconColor: Colors.white,
//               splashColor: primaryColor,
//               backgroundShadowColor: primaryColor,
//               borderBottomColor: primaryColor,
//               selectedIconColor: primaryColor
//           ),
//           LightBottomNavigationBarItem(
//               selectedIcon: Icons.info,
//               unSelectedIcon: Icons.info_outline,
//               unSelectedIconColor: Colors.white,
//               splashColor: primaryColor,
//               backgroundShadowColor: primaryColor,
//               borderBottomColor: primaryColor,
//               selectedIconColor: primaryColor
//           )
//
//         ],
//         onSelected: (index){
//           print('tab $index');
//         },
//
//       ),
//
//     );
//   }
// }
// class TextStyling {
//   final TextStyle HeadingText = TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500);
//   final TextStyle Description=TextStyle(color: Colors.black,fontSize: 15,wordSpacing: 4.0);
//   final TextStyle SubHeadingText = TextStyle(color: Colors.black, fontSize: 15,);
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:social_medias/project/enroll.dart';
import 'languages.dart';
import 'model/languages_list.dart';

class LanguageDetails extends StatelessWidget {
  final Languages_List lang;
  Color primaryColor = Colors.red;

  LanguageDetails({required this.lang});

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Languages()));
              },
              icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
            ),
            floating: true,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                      items: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1546410531-bb4caa6b424d?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1501504905252-473c47e087f8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                 "https://images.unsplash.com/photo-1530521954074-e64f6810b32d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1660927059794-152d06e11016?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1573496546038-82f9c39f6365?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 200,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        viewportFraction: 0.8,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayCurve: Curves.easeIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Text(
                      "Welcome to ${lang.name}",
                      style: TextStyling().HeadingText,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.timelapse_sharp),
                        Text(lang.duration, style: TextStyling().SubHeadingText),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        Text(lang.fees.toString(), style: TextStyling().SubHeadingText),
                      ],
                    ),
                    ReadMoreText(
                      lang.description,
                      trimLines: 3,
                      colorClickableText: Colors.red,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      style: TextStyling().Description,
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => ApplicationFormL(lang: lang),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.red),
                          ),
                        ),
                        child: Text(
                          "Enroll Now ->",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: LightBottomNavigationBar(
        items: [
          LightBottomNavigationBarItem(
            selectedIcon: Icons.person,
            unSelectedIcon: Icons.person_outline,
            unSelectedIconColor: Colors.white,
            splashColor: primaryColor,
            backgroundShadowColor: primaryColor,
            borderBottomColor: primaryColor,
            selectedIconColor: primaryColor,
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
            selectedIconColor: primaryColor,
          ),
          LightBottomNavigationBarItem(
            selectedIcon: Icons.info,
            unSelectedIcon: Icons.info_outline,
            unSelectedIconColor: Colors.white,
            splashColor: primaryColor,
            backgroundShadowColor: primaryColor,
            borderBottomColor: primaryColor,
            selectedIconColor: primaryColor,
          ),
        ],
        onSelected: (index) {
          print('tab $index');
        },
      ),
    );
  }
}

class TextStyling {
  final TextStyle HeadingText = TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500);
  final TextStyle Description = TextStyle(color: Colors.black, fontSize: 15, wordSpacing: 4.0);
  final TextStyle SubHeadingText = TextStyle(color: Colors.black, fontSize: 15);
}
