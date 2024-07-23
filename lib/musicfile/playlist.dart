
import 'package:flutter/material.dart';
import 'package:social_medias/musicfile/model/PlayList.dart';
import 'package:social_medias/musicfile/musiclist.dart';

import 'musicApp.dart';

void main() {
  runApp(MaterialApp(
    home: Playlist(),
    debugShowCheckedModeBanner: false,
  ));
}

class Playlist extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Playlists",
            style: TextStyle(
              color: Colors.pink[200],
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              floating: true,
              pinned: false,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.pink[200]),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.pink[200]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    final ply = music_list[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => songsFromplaylist()),
                          );
                        },
                        child: Card(
                          color: Colors.black,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(ply["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                    );
                  },
                  childCount: music_list.length,
                ),
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
        },
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: Colors.pink[200],
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? Column(
                children: [
                  IconButton(onPressed:(){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Musicapp()));
                  },icon:Icon(Icons.circle,color: Colors.pink[200]),),
                  //Text("home",style: TextStyle(color: Colors.pink[200]),)
                ],
              )
                  :Icon(Icons.home,color: Colors.pink[200],),
              label:"home"


          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Column(
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Playlist()));
                }, icon: Icon(Icons.circle,color: Colors.pink[200],),)
                //Text("home",style: TextStyle(color: Colors.pink[200]),)
              ],
            )
                :Icon(Icons.search,color: Colors.pink[200],),
            label:"Search",
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Column(
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Playlist()));
                }, icon: Icon(Icons.circle,color: Colors.pink[200],),)
              ],
            )
                :Icon(Icons.playlist_play_rounded,color: Colors.pink[200],),
            label:"PlayList",
          ),
          BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? Column(
                children: [
                  Icon(Icons.circle,color: Colors.pink[200],),
                  //Text("home",style: TextStyle(color: Colors.pink[200]),)
                ],
              )
                  :Icon(Icons.settings,color: Colors.pink[200],),
              label:"settings"
          ),
        ],
      ),
    );

  }

}