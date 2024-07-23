import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MediaCoursesPage(),
    );
  }
}

class MediaCoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media'),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          MediaCourseCard(
            title: 'Direction',
            duration: '6 Month',
            lessons: '14 lessons 6 modules',
            icon: Icons.movie_creation,
            iconColor: Colors.red,
            imageUrl: 'assets/direction.png',
          ),
          MediaCourseCard(
            title: 'Cinematography',
            duration: '6 Month',
            lessons: '14 lessons 6 modules',
            icon: Icons.camera_alt,
            iconColor: Colors.green,
            imageUrl: 'assets/cinematography.png',
          ),
          MediaCourseCard(
            title: 'Graphic Designer',
            duration: '6 Month',
            lessons: '14 lessons 6 modules',
            icon: Icons.design_services,
            iconColor: Colors.blue,
            imageUrl: 'assets/graphic_design.png',
          ),
          MediaCourseCard(
            title: 'Still Photographer',
            duration: '6 Month',
            lessons: '14 lessons 6 modules',
            icon: Icons.camera,
            iconColor: Colors.orange,
            imageUrl: 'assets/photographer.png',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.red),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.black),
            label: 'Info',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.red,
      ),
    );
  }
}

class MediaCourseCard extends StatelessWidget {
  final String title;
  final String duration;
  final String lessons;
  final IconData icon;
  final Color iconColor;
  final String imageUrl;

  MediaCourseCard({
    required this.title,
    required this.duration,
    required this.lessons,
    required this.icon,
    required this.iconColor,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          // Implement your onTap functionality here
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.yellowAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: iconColor.withOpacity(0.3),
                    child: Icon(
                      icon,
                      color: iconColor,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Duration: $duration',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      Text(
                        lessons,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imageUrl,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
