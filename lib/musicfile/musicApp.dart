//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:social_medias/musicfile/model/Recommeded_list.dart';
// import 'package:social_medias/musicfile/model/PlayList.dart';
// import 'package:social_medias/musicfile/playlist.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Musicapp(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class Musicapp extends StatefulWidget {
//   const Musicapp({super.key});
//
//   @override
//   State<Musicapp> createState() => _MusicappState();
// }
//
// class _MusicappState extends State<Musicapp> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Musify", style: TxtStyling().Heading),
//         backgroundColor: Colors.black,
//       ),
//       body: Container(
//         color: Colors.black,
//         child: CustomScrollView(
//
//           scrollDirection: Axis.vertical,
//           slivers: [
//             SliverAppBar(
//               backgroundColor: Colors.black,
//               title: Text(
//                 "Suggested Playlist",
//                 style: TxtStyling().subHeading,
//               ),
//               floating: true,
//               pinned: false,
//             ),
//             SliverList(
//               delegate: SliverChildListDelegate(
//                 [
//                   Column(
//                     children: [
//                       CarouselSlider(
//                         items: music_list.map((musics) {
//                           return Card(
//                             child: Padding(
//                               padding: EdgeInsets.all(2.0),
//                               child: Image.network(
//                                 musics["image"]!,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         options: CarouselOptions(
//                           height: 200,
//                           initialPage: 0,
//                           enableInfiniteScroll: true,
//                           enlargeCenterPage: true,
//                           viewportFraction: 0.8,
//                           autoPlayInterval: Duration(seconds: 5),
//                           scrollDirection: Axis.horizontal,
//                           autoPlay: true,
//                           aspectRatio: 16 / 9,
//                           autoPlayCurve: Curves.decelerate,
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(8.0),
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           "Recommended for you",
//                           style: TxtStyling().subHeading,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 400, // Define a fixed height for the list
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: recommended.length,
//                           itemBuilder: (context, index) {
//                             final rec_list = recommended[index];
//                             return ListTile(
//                               leading: Image.network(rec_list["image"]!),
//                               title: Text(
//                                 rec_list["name"]!,
//                                 style: TxtStyling().musicName,
//                               ),
//                               subtitle: Text(
//                                 rec_list["singer"]!,
//                                 style: TextStyle(color: Colors.white, fontSize: 15),
//                               ),
//                               trailing: SizedBox(
//                                 width: 100,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         Icons.star_border,
//                                         color: Colors.pink[200],
//                                       ),
//                                     ),
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         Icons.download_outlined,
//                                         color: Colors.pink[200],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         showUnselectedLabels: false,
//         showSelectedLabels: true,
//         selectedItemColor: Colors.pink[200],
//         unselectedItemColor: Colors.white,
//         items: [
//           BottomNavigationBarItem(
//             icon: _currentIndex == 0
//                 ? Column(
//               children: [
//                 IconButton(onPressed:(){
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Musicapp()));
//                 },icon:Icon(Icons.circle,color: Colors.pink[200]),),
//                 //Text("home",style: TextStyle(color: Colors.pink[200]),)
//               ],
//             )
//                 :Icon(Icons.home,color: Colors.pink[200],),
//             label:"home"
//
//
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 1
//                 ? Column(
//               children: [
//                IconButton(onPressed: (){
//                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Playlist()));
//                }, icon: Icon(Icons.circle,color: Colors.pink[200],),)
//                 //Text("home",style: TextStyle(color: Colors.pink[200]),)
//               ],
//             )
//                 :Icon(Icons.search,color: Colors.pink[200],),
//             label:"Search",
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 2
//                 ? Column(
//               children: [
//                 IconButton(onPressed: (){
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Playlist()));
//                 }, icon: Icon(Icons.circle,color: Colors.pink[200],),)
//               ],
//             )
//                 :Icon(Icons.playlist_play_rounded,color: Colors.pink[200],),
//             label:"PlayList",
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 3
//                 ? Column(
//               children: [
//                 Icon(Icons.circle,color: Colors.pink[200],),
//                 //Text("home",style: TextStyle(color: Colors.pink[200]),)
//               ],
//             )
//                 :Icon(Icons.settings,color: Colors.pink[200],),
//                label:"settings"
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class TxtStyling {
//   final TextStyle Heading = TextStyle(color: Colors.pink[200], fontSize: 30);
//   final TextStyle subHeading = TextStyle(color: Colors.pink[200], fontSize: 20);
//   final TextStyle musicName = TextStyle(color: Colors.pink[200], fontSize: 15);
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_medias/musicfile/fav_list.dart';
import 'package:social_medias/musicfile/model/Recommeded_list.dart';
import 'package:social_medias/musicfile/model/PlayList.dart';
import 'package:social_medias/musicfile/playlist.dart';
import 'package:social_medias/musicfile/provider/music_Provider.dart';

void main() {
  runApp(MaterialApp(
    home: Musicapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Musicapp extends StatefulWidget {
  const Musicapp({super.key});

  @override
  State<Musicapp> createState() => _MusicappState();
}

class _MusicappState extends State<Musicapp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Musify", style: TxtStyling.Heading),
        backgroundColor: Colors.black,
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fav()));
          }, child: Text("fav",style: TextStyle(color: Colors.pink[200]),))
        ],
      ),
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Suggested Playlist",
                style: TxtStyling.subHeading,
              ),
              floating: true,
              pinned: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    children: [
                      if (music_list.isNotEmpty)
                        CarouselSlider(
                          items: music_list.map((musics) {
                            return Card(
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Image.network(
                                  musics["image"]!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 200,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8,
                            autoPlayInterval: Duration(seconds: 5),
                            scrollDirection: Axis.horizontal,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.decelerate,
                          ),
                        ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Recommended for you",
                          style: TxtStyling.subHeading,
                        ),
                      ),
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: recommended.length,
                          itemBuilder: (context, index) {
                            final rec_list = recommended[index];
                            return ListTile(
                              leading: Image.network(rec_list.image),
                              title: Text(
                                rec_list.name,
                                style: TxtStyling.musicName,
                              ),
                              subtitle: Text(
                                rec_list.singer,
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                              trailing: SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Provider.of<MusicProvider>(context, listen: false)
                                     .addTofav({
                                          "name": rec_list.name,
                                           "singer": rec_list.singer,
                                          "image": rec_list.image,
                                             });
                                     ScaffoldMessenger.of(context)
                                         .showSnackBar(SnackBar(content: Text("added to favourite list"))
                                     );
                                     },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.pink[200],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.download_outlined,
                                        color: Colors.pink[200],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Musicapp()));
              break;
            case 1:
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Playlist()));
              break;
            case 2:
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Playlist()));
              break;
            case 3:
            // Handle settings navigation
              break;
          }
        },
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: Colors.pink[200],
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play_rounded),
            label: "Playlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

class TxtStyling {
  static final TextStyle Heading = TextStyle(color: Colors.pink[200], fontSize: 30);
  static final TextStyle subHeading = TextStyle(color: Colors.pink[200], fontSize: 20);
  static final TextStyle musicName = TextStyle(color: Colors.pink[200], fontSize: 15);
}