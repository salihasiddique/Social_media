import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B2A46),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Free online class',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                'From over 80 Lectures',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              SizedBox(height: 16),
              ClassCard(
                title: 'Flutter Developer',
                duration: '8 Hours',
                rating: 5,
                color: Color(0xFFFF6584),
                imageAsset: 'assets/flutter.png', // Add your asset image here
              ),
              SizedBox(height: 16),
              ClassCard(
                title: 'Full Stack Javascript',
                duration: '6 Hours',
                rating: 5,
                color: Color(0xFF8E7FFF),
                imageAsset: 'assets/javascript.png', // Add your asset image here
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClassCard extends StatelessWidget {
  final String title;
  final String duration;
  final int rating;
  final Color color;
  final String imageAsset;

  ClassCard({
    required this.title,
    required this.duration,
    required this.rating,
    required this.color,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF3D3B58),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(imageAsset, height: 60, width: 60), // Add your asset image here
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  duration,
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
                SizedBox(height: 8),
                Row(
                  children: List.generate(rating, (index) {
                    return Icon(Icons.star, color: Colors.yellow, size: 20);
                  }),
                ),
              ],
            ),
          ),
          Icon(Icons.play_arrow, color: Colors.white),
        ],
      ),
    );
  }
}
