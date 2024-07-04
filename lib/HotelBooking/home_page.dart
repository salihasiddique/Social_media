import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PopularHotels.dart';


void main(){
  runApp(MaterialApp(
    home: HotelHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
class HotelHomePage extends StatefulWidget {
  const HotelHomePage({super.key});

  @override
  State<HotelHomePage> createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
  // extracts the names from hotels to searchhotel list for search controller
  List<String> searchHotel=hotels.map((hotel)=>hotel["name"] as String).toList();
  final TextEditingController _searchController=TextEditingController();
  String query="";

  @override
  void initState(){
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }
  @override
  void dispose(){
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }
  _onSearchChanged(){
    setState(() {
      query=_searchController.text.toLowerCase();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title:Text("Find Your Favourite Hotel",),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child:Container(
                    child: Padding(padding: EdgeInsets.all(5.0),
                    child:Column(
                      children:[
                        TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Search For Hotel",
                          prefixIcon: Icon(Icons.search)
                      ),
                    ),
                    ],
                    ),
                  ),
                  ),

              ),
                floating: true,
                pinned: false,
            actions: [
              ClipRRect(
                  borderRadius:BorderRadius.circular(20),
                  child: Align(
                      widthFactor: .7,
                      heightFactor: .7,
                      child: Image(image: NetworkImage("https://images.unsplash.com/photo-1683829989980-2f78a0ca9879?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
                  )
              ),
            ],
            ),
          // expanded widget cant place inside column
          //Listview inside Sliver Appbar may cause layout issues
          SliverList(
            delegate: SliverChildListDelegate(
              searchHotel.where((hotel) => hotel.toLowerCase().contains(query))
                  .map((hotel) => ListTile(
                  title: Text(hotel),
              ))
                  .toList(),
            ),
          ),
         SliverList(
             delegate: SliverChildListDelegate(
               [
                 Column(
                   children: [
                     Padding(padding: EdgeInsets.all(8.0),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: Text("Popular Hotel",
                           style: GoogleFonts.aBeeZee(
                               fontSize: 20,
                               fontWeight: FontWeight.bold)),
                     ),
                     ),
                     Padding(padding: EdgeInsets.all(10.0),
                     child: Container(
                       height: 200,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                           itemCount: hotels.length,
                           itemBuilder:(context,index){
                             final hotel=hotels[index];
                             return Card(
                               elevation: 4,
                               child:Padding(padding: EdgeInsets.all(4.3),
                               child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Image.network(
                                     hotel["image"],
                                     height: 100,
                                     width: 150,
                                  ),
                                 SizedBox(height: 4,),
                                 Text(hotel["name"]!),
                                 SizedBox(width:3),
                                 Text(hotel["Description"]!),
                                 Row(
                                   children: [
                                     Text("₹${hotel["rent"].toString()}",
                                     style: TextStyle(color: Colors.blue),),
                                     SizedBox(width: 70,),
                                     Text(hotel["rating"]!),
                                     Icon(Icons.star,color: Colors.blue,size: 14,)
                                   ],
                                 )
                               ],
                             ),
                             ),
                             );
                           }
                       ),    
                     ),
                     ),
                     Padding(padding: EdgeInsets.all(8.0),
                       child: Align(
                         alignment: Alignment.centerLeft,
                         child: Text("Hotel Packages", style: GoogleFonts.aBeeZee(
                             fontSize: 25,
                             fontWeight: FontWeight.bold)),
                       ),
                     ),
                   Padding(padding: EdgeInsets.all(8.0),
                   child: Container(
                      height: 300,
                      child:ListView.builder(
                          itemCount: hotels.length,
                          itemBuilder: (context,index){
                          final packagelist=hotels[index];
                          return PackageCard(packagelist: packagelist);
                         
                          })
                   )

                   )
                   ],
                 )
               ]
             ),
         ),


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
          selectedFontSize: 10,
          items:[
            BottomNavigationBarItem(
                icon: ElevatedButton(onPressed: (){},

                    child: Icon(Icons.home,)
                ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ElevatedButton(onPressed: (){},

                  child: Icon(Icons.search,)
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: ElevatedButton(onPressed: (){},

                  child: Icon(Icons.person,)
              ),
              label: "Profile",

            )

          ] ),
    );
  }
}


class PackageCard  extends StatelessWidget{
  final Map<String,dynamic> packagelist;
  const PackageCard({required this.packagelist});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              packagelist["image"],
            //height: double.infinity,
            height: 100,
            width:100,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(packagelist["name"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(packagelist["Description"],),
              Text("₹${packagelist["rent"].toString()}",
                style: TextStyle(color: Colors.blue),
              ),
              Row(
                children: [
                  Icon(Icons.car_rental,color: Colors.blue,),
                  SizedBox(width: 20,),
                  Icon(Icons.hotel,color: Colors.blue,),
                  SizedBox(width: 20,),
                  Icon(Icons.wifi,color:Colors.blue),
                ],
                
              )
            ],
          ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                child: Text("Book",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )),
          )

        ],
      ),
    );
   
  }
}
