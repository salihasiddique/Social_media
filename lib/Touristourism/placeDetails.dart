import 'package:flutter/material.dart';

import 'model/places.dart';

class PlaceDetails extends StatelessWidget {
  final Place place;

  PlaceDetails({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              place.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
               Image.network(place.imageone,height: 200,width: 150,),
                SizedBox(width: 2,),
                Image.network(place.imagetwo,height: 200,width: 150,),
                SizedBox(width: 2,),
                Image.network(place.imagethree,height: 200,width: 150,)
                
              ],
            ),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Press to Explore',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[800],
                  side: BorderSide(
                    width: double.infinity
                  )
                ),
              ),
            ),
            // Add more content here
          ],
        ),
      ),
    );
  }
}
