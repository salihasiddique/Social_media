// import 'package:flutter/material.dart';
// import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
// import 'package:social_medias/project/medias.dart';
// import 'enroll.dart';
// import 'model/media_list.dart';
//
//
// class MediaDetails extends StatelessWidget {
//   final Medias_List media;
//   Color primaryColor = Colors.red;
//
//   MediaDetails({required this.media});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Colors.black,
//       appBar: AppBar(
//           backgroundColor: Colors.black,
//           leading:
//           IconButton(onPressed: (){
//             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Medias()));
//           }, icon: Icon(Icons.arrow_back_rounded,color: Colors.white,))
//       ),
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Welcome to ${media.name}",
//               style: TextStyling().HeadingText,),
//             Text(media.description,style: TextStyling().Description),
//             SizedBox(height: 10,),
//            Text("Duration  ${media.duration}",style: TextStyling().SubHeadingText,),
//             SizedBox(height: 8,),
//             Text("Fees  ${media.fees}",style: TextStyling().SubHeadingText,),
//             SizedBox(height: 10,),
//             ElevatedButton(onPressed: (){
//               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ApplicationForm()));
//             },
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                       side: BorderSide(color: Colors.red),
//
//
//                   )
//                 ),
//                 child: Text("Enroll Now ->",style: TextStyle(color: Colors.red),))
//
//
//           ],
//         ),
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
//   final TextStyle HeadingText = TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500);
//   final TextStyle Description=TextStyle(color: Colors.black,fontSize: 15,wordSpacing: 4.0);
//   final TextStyle SubHeadingText = TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w700);
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:social_medias/project/enroll.dart';
import 'package:social_medias/project/medias.dart';
import 'package:social_medias/project/model/media_list.dart';
import 'enrollmedia.dart';
import 'languages.dart';
import 'model/languages_list.dart';


class MediaDetails extends StatelessWidget {
  final Medias_List media;
  Color primaryColor = Colors.red;

  MediaDetails({required this.media});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,

      ),
      body:CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            leading:
            IconButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Medias()));
            },
                icon: Icon(Icons.arrow_back_rounded,color: Colors.white,)),
            floating: true,
            pinned: false,
          ),

          SliverList(delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(items:
                    [
                      Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                 "https://images.unsplash.com/photo-1608204683146-0f7e909dca59?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                          "https://images.unsplash.com/photo-1551712744-1963ba88d303?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                             "https://images.unsplash.com/photo-1587050007609-d9686b217bd6?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1647427854253-b92bb40c9330?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1632670467494-c7c6de897290?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1551712744-1963ba88d303?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                      options:CarouselOptions(
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
                    Text("Welcome to ${media.name}",
                      style: TextStyling().HeadingText,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.timelapse_sharp),
                        Text(media.duration,style: TextStyling().SubHeadingText),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        Text(media.fees.toString(),style: TextStyling().SubHeadingText),

                      ],
                    ),
                    ReadMoreText(media.description,
                      trimLines: 3,
                      colorClickableText: Colors.red,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      style: TextStyling().Description,
                    ),
                    //  Text(lang.description,style: TextStyling().Description),
                    SizedBox(height: 40,),
                    Center(
                      child:
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)=>ApplicationFormM(media:media)));
                      },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.red),
                              )
                          ),
                          child: Text("Enroll Now ->",style: TextStyle(color: Colors.red),)),
                    )
                  ],
                ) ,
              ]
          ),
          )
        ],


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
class TextStyling {
  final TextStyle HeadingText = TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500);
  final TextStyle Description=TextStyle(color: Colors.black,fontSize: 15,wordSpacing: 4.0);
  final TextStyle SubHeadingText = TextStyle(color: Colors.black, fontSize: 15,);
}