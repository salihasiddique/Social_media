
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_medias/facebook/video.dart';

import 'facebook_home.dart';
import 'flag.dart';
import 'friend_list.dart';
import 'menu.dart';
import 'notifications.dart';


void main() {
  runApp(MaterialApp(
    home: Facebook(),
    debugShowCheckedModeBanner: false,
  ));
}

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: GoogleFonts.archivoBlack(
              textStyle: TextStyle(
                color: Colors.blueAccent,
                letterSpacing: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.message_rounded),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.people_alt)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.outlined_flag)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.menu)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FacebookHome(),
            frndlist(),
            fbvd(),
            flag(),
            notification(),
            menu()
          ],
        ),
      ),
    );
  }
}


