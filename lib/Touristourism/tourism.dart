import 'package:flutter/material.dart';
import 'package:social_medias/Touristourism/placeDetails.dart';

import 'model/places.dart';

void main() {
  runApp(MaterialApp(
    home: TourismApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class TourismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular',style: TextStyle(color: Colors.white
        ),),
        backgroundColor: Colors.purple[800],
      ),
      body: ListView.builder(       // builds s a list of items dynamically
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return GestureDetector(    //wrap each list to detect taps and navigte to details
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetails(place: place),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Image.network(
                    place.imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      color: Colors.black54,  //balck with opacity 54
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        place.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
