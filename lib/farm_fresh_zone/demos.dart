// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: DefaultTabController(
// //         length: 3, // Number of tabs
// //         child: Scaffold(
// //           appBar: AppBar(
// //             title: Text('AppBar with TabBar'),
// //             bottom: TabBar(
// //               tabs: [
// //                 Tab(icon: Icon(Icons.directions_car)),
// //                 Tab(icon: Icon(Icons.directions_transit)),
// //                 Tab(icon: Icon(Icons.directions_bike)),
// //               ],
// //             ),
// //           ),
// //           body: TabBarView(
// //             children: [
// //               Center(child: Text('Car Tab')),
// //               Center(child: Text('Transit Tab')),
// //               Center(child: Text('Bike Tab')),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyHomePage(),
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('AppBar with Search Bar'),
// //         bottom: PreferredSize(
// //           preferredSize: Size.fromHeight(kToolbarHeight),
// //           child: Padding(
// //             padding: EdgeInsets.all(8.0),
// //             child: TextField(
// //               decoration: InputDecoration(
// //                 hintText: 'Search...',
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(8.0),
// //                   borderSide: BorderSide.none,
// //                 ),
// //                 fillColor: Colors.white,
// //                 filled: true,
// //                 prefixIcon: Icon(Icons.search),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //       body: Center(
// //         child: Text('Your main content goes here'),
// //       ),
// //     );
// //   }
// // }
// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: Home(),
// //     debugShowCheckedModeBanner: false,
// //   ));
// // }
// //
// // class Home extends StatefulWidget {
// //   const Home({super.key});
// //
// //   @override
// //   State<Home> createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CustomScrollView(
// //         slivers: [
// //           SliverAppBar(
// //             backgroundColor: Colors.greenAccent[400],
// //             title: Text(
// //               "Farmers Fresh Zone",
// //               style: GoogleFonts.firaSansCondensed(
// //                 textStyle: TextStyle(
// //                   color: Colors.white,
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: 28,
// //                 ),
// //               ),
// //             ),
// //             actions: [
// //               IconButton(
// //                 onPressed: () {},
// //                 icon: Icon(Icons.location_on_outlined, color: Colors.white),
// //               ),
// //             ],
// //             floating: true,
// //             pinned: false,
// //             bottom: PreferredSize(
// //               preferredSize: Size.fromHeight(kToolbarHeight),
// //               child: Container(
// //                 color: Colors.greenAccent[400],
// //                 padding: EdgeInsets.all(8.0),
// //                 child: TextFormField(
// //                   decoration: InputDecoration(
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                     hintText: "Search Here",
// //                     prefixIcon: Icon(Icons.search),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SliverList(
// //             delegate: SliverChildListDelegate(
// //               [
// //                 Column(
// //                   children: [
// //                     CarouselSlider(
// //                       items: [
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1516594798947-e65505dbb29d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1698309377471-54a87740d979?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                       options: CarouselOptions(
// //                         height: 200,
// //                         aspectRatio: 16 / 9,
// //                         initialPage: 0,
// //                         enableInfiniteScroll: true,
// //                         autoPlay: true,
// //                         viewportFraction: 0.8,
// //                         autoPlayInterval: Duration(seconds: 2),
// //                         autoPlayCurve: Curves.easeIn,
// //                         enlargeCenterPage: true,
// //                         enlargeFactor: 0.3,
// //                         scrollDirection: Axis.horizontal,
// //                       ),
// //                     ),
// //                     Container(
// //                       margin: EdgeInsets.symmetric(vertical: 20),
// //                       padding: EdgeInsets.all(10),
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: Colors.green),
// //                       ),
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                         children: [
// //                           Column(
// //                             children: [
// //                               Icon(Icons.timer_outlined),
// //                               Text("30 MIN POLICY"),
// //                             ],
// //                           ),
// //                           Column(
// //                             children: [
// //                               Icon(Icons.verified_outlined),
// //                               Text("TRACEABILITY"),
// //                             ],
// //                           ),
// //                           Column(
// //                             children: [
// //                               Icon(Icons.local_florist_outlined),
// //                               Text("LOCAL SOURCING"),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: Home(),
// //     debugShowCheckedModeBanner: false,
// //   ));
// // }
// //
// // class Home extends StatefulWidget {
// //   const Home({super.key});
// //
// //   @override
// //   State<Home> createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //   final List<Map<String, String>> freshfarmlist = [
// //     {"image": "assets/images/cart.png", "name": "Offers"},
// //     {"image": "assets/images/house.png", "name": "Vegetables"},
// //     {"image": "assets/images/amazon.png", "name": "Fruits"},
// //     {"image": "assets/orange.png", "name": "Exotic"},
// //     {"image": "assets/images/7533491_3691028.jpg", "name": "Fresh cuts"},
// //     {"image": "assets/images/1260314_159401-OUNC8S-198.jpg", "name": "Nuitritions Chargers"},
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CustomScrollView(
// //         slivers: [
// //           SliverAppBar(
// //             backgroundColor: Colors.greenAccent[400],
// //             title: Text(
// //               "Farmers Fresh Zone",
// //               style: GoogleFonts.firaSansCondensed(
// //                 textStyle: TextStyle(
// //                   color: Colors.white,
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: 28,
// //                 ),
// //               ),
// //             ),
// //             actions: [
// //               IconButton(
// //                 onPressed: () {},
// //                 icon: Icon(Icons.location_on_outlined, color: Colors.white),
// //               ),
// //             ],
// //             floating: true,
// //             pinned: false,
// //             bottom: PreferredSize(
// //               preferredSize: Size.fromHeight(kToolbarHeight),
// //               child: Container(
// //                 color: Colors.greenAccent[400],
// //                 padding: EdgeInsets.all(8.0),
// //                 child: TextFormField(
// //                   decoration: InputDecoration(
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                     hintText: "Search for vegetables and fruits",
// //                     hintStyle: TextStyle(color: Colors.white),
// //                     prefixIcon: Icon(Icons.search),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SliverList(
// //             delegate: SliverChildListDelegate(
// //               [
// //                 Column(
// //                   children: [
// //                     CarouselSlider(
// //                       items: [
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1516594798947-e65505dbb29d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1698309377471-54a87740d979?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                       options: CarouselOptions(
// //                         height: 200,
// //                         aspectRatio: 16 / 9,
// //                         initialPage: 0,
// //                         enableInfiniteScroll: true,
// //                         autoPlay: true,
// //                         viewportFraction: 0.8,
// //                         autoPlayInterval: Duration(seconds: 2),
// //                         autoPlayCurve: Curves.easeIn,
// //                         enlargeCenterPage: true,
// //                         enlargeFactor: 0.3,
// //                         scrollDirection: Axis.horizontal,
// //                       ),
// //                     ),
// //                     Container(
// //                       margin: EdgeInsets.symmetric(vertical: 20),
// //                       padding: EdgeInsets.all(10),
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: Colors.greenAccent),
// //                         shape: BoxShape.rectangle,
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.white,
// //                             blurRadius: 2,
// //                             offset: Offset(2, 4),
// //                           )
// //                         ],
// //                       ),
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                         children: [
// //                           Column(
// //                             children: [
// //                               Icon(Icons.timer_outlined),
// //                               Text("30 MIN POLICY"),
// //                             ],
// //                           ),
// //                           Column(
// //                             children: [
// //                               Icon(Icons.verified_outlined),
// //                               Text("TRACEABILITY"),
// //                             ],
// //                           ),
// //                           Column(
// //                             children: [
// //                               Icon(Icons.local_florist_outlined),
// //                               Text("LOCAL SOURCING"),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     SizedBox(height: 5),
// //                     Padding(
// //                       padding: EdgeInsets.all(10),
// //                       child: GridView.builder(
// //                         shrinkWrap: true,
// //                         physics: NeverScrollableScrollPhysics(),
// //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                           crossAxisCount: 3,
// //                           crossAxisSpacing: 5,
// //                           mainAxisSpacing: 5,
// //                         ),
// //                         itemBuilder: (context, index) {
// //                           final item = freshfarmlist[index];
// //                           return Card(
// //                             child: Column(
// //                               children: [
// //                                 Image.asset(
// //                                   item["image"]!,
// //                                   height: 80,
// //                                   width: 80,
// //                                 ),
// //                                 Text(item["name"]!),
// //                               ],
// //                             ),
// //                           );
// //                         },
// //                         itemCount: freshfarmlist.length,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_project/farm_fresh_zone/freshfarmlist.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // import '../PassingData/dumydata.dart'; // Ensure this import points to the correct file where farmlist is defined
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: Home(),
// //     debugShowCheckedModeBanner: false,
// //   ));
// // }
// //
// // class Home extends StatefulWidget {
// //   const Home({super.key});
// //
// //   @override
// //   State<Home> createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CustomScrollView(
// //         slivers: [
// //           SliverAppBar(
// //             backgroundColor: Colors.greenAccent[400],
// //             title: Text(
// //               "Farmers Fresh Zone",
// //               style: GoogleFonts.firaSansCondensed(
// //                 textStyle: TextStyle(
// //                   color: Colors.white,
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: 28,
// //                 ),
// //               ),
// //             ),
// //             actions: [
// //               IconButton(
// //                 onPressed: () {},
// //                 icon: Icon(Icons.location_on_outlined, color: Colors.white),
// //               ),
// //             ],
// //             floating: true,
// //             pinned: false,
// //             bottom: PreferredSize(
// //               preferredSize: Size.fromHeight(kToolbarHeight),
// //               child: Container(
// //                 color: Colors.greenAccent[400],
// //                 padding: EdgeInsets.all(8.0),
// //                 child: TextFormField(
// //                   decoration: InputDecoration(
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                     hintText: "Search for vegetables and fruits",
// //                     hintStyle: TextStyle(color: Colors.white),
// //                     prefixIcon: Icon(Icons.search),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SliverList(
// //             delegate: SliverChildListDelegate(
// //               [
// //                 Column(
// //                   children: [
// //                     CarouselSlider(
// //                       items: [
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1516594798947-e65505dbb29d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://images.unsplash.com/photo-1698309377471-54a87740d979?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                       options: CarouselOptions(
// //                         height: 200,
// //                         aspectRatio: 16 / 9,
// //                         initialPage: 0,
// //                         enableInfiniteScroll: true,
// //                         autoPlay: true,
// //                         viewportFraction: 0.8,
// //                         autoPlayInterval: Duration(seconds: 2),
// //                         autoPlayCurve: Curves.easeIn,
// //                         enlargeCenterPage: true,
// //                         enlargeFactor: 0.3,
// //                         scrollDirection: Axis.horizontal,
// //                       ),
// //                     ),
// //                     Container(
// //                       margin: EdgeInsets.symmetric(vertical: 20),
// //                       padding: EdgeInsets.all(10),
// //                       decoration: BoxDecoration(
// //                           border: Border.all(color: Colors.greenAccent,),
// //                           shape: BoxShape.rectangle,
// //                           boxShadow:[ BoxShadow(
// //                             color: Colors.white,
// //                             blurRadius: 2,
// //                             offset: Offset(2,4),
// //
// //                           )]
// //
// //
// //                       ),
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                         children: [
// //                           Column(
// //                             children: [
// //                               Icon(Icons.timer_outlined),
// //                               Text("30 MIN POLICY"),
// //                             ],
// //                           ),
// //                           Column(
// //                             children: [
// //                               Icon(Icons.verified_outlined),
// //                               Text("TRACEABILITY"),
// //                             ],
// //                           ),
// //                           Column(
// //                             children: [
// //                               Icon(Icons.local_florist_outlined),
// //                               Text("LOCAL SOURCING"),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     SizedBox(height: 5,),
// //                     Padding(
// //                       padding: EdgeInsets.all(10),
// //                       child: GridView.builder(
// //                         shrinkWrap: true,
// //                         physics: NeverScrollableScrollPhysics(),
// //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                           crossAxisCount: 3,
// //                           crossAxisSpacing: 5,
// //                           mainAxisSpacing: 5,
// //                         ),
// //                         itemBuilder: (context, index) {
// //                           final item = farmlist[index];
// //                           return Card(
// //                             child: Column(
// //                               children: [
// //                                 Image.asset(
// //                                   item["image"]!,
// //                                   height: 80,
// //                                   width: 80,
// //                                 ),
// //                                 Text(item["name"]!),
// //                               ],
// //                             ),
// //                           );
// //                         },
// //                         itemCount: farmlist.length,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Home(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final List<Map<String, String>> farmlist = [
//     {"name": "Carrot", "image": "assets/carrot.png"},
//     // Add more items
//   ];
//
//   final List<Map<String, String>> productList = [
//     {"name": "Apple", "image": "https://via.placeholder.com/150", "price": "100", "unit": "1kg"},
//     // Add more items
//   ];
//
//   final List<Map<String, String>> blogList = [
//     {"description": "Control Blood Pressure", "image": "assets/blood_pressure.png"},
//     // Add more items
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Colors.greenAccent[400],
//             title: Text(
//               "Farmers Fresh Zone",
//               style: GoogleFonts.firaSansCondensed(
//                 textStyle: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 28,
//                 ),
//               ),
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.location_on_outlined, color: Colors.white),
//               ),
//             ],
//             floating: true,
//             pinned: false,
//             bottom: PreferredSize(
//               preferredSize: Size.fromHeight(kToolbarHeight),
//               child: Container(
//                 color: Colors.greenAccent[400],
//                 padding: EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     hintText: "Search for vegetables and fruits",
//                     hintStyle: TextStyle(color: Colors.white),
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 Column(
//                   children: [
//                     Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton(onPressed: () {}, child: Text("OFFERS")),
//                           TextButton(onPressed: () {}, child: Text("VEGETABLES")),
//                           TextButton(onPressed: () {}, child: Text("FRUITS")),
//                           TextButton(onPressed: () {}, child: Text("EXOTIC")),
//                           TextButton(onPressed: () {}, child: Text("FRESH CUTS")),
//                         ],
//                       ),
//                     ),
//                     CarouselSlider(
//                       items: [
//                         Container(
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://images.unsplash.com/photo-1516594798947-e65505dbb29d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://images.unsplash.com/photo-1698309377471-54a87740d979?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ],
//                       options: CarouselOptions(
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
//                     ),
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: 20),
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.greenAccent),
//                         shape: BoxShape.rectangle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.white,
//                             blurRadius: 2,
//                             offset: Offset(2, 4),
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             children: [
//                               Icon(Icons.timer_outlined),
//                               Text("30 MIN POLICY"),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(Icons.verified_outlined),
//                               Text("TRACEABILITY"),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(Icons.local_florist_outlined),
//                               Text("LOCAL SOURCING"),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(3.0),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Shop By Category",
//                           style: TextStyle(
//                             fontSize: 20,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: GridView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           crossAxisSpacing: 5,
//                           mainAxisSpacing: 5,
//                         ),
//                         itemBuilder: (context, index) {
//                           final item = farmlist[index];
//                           return Card(
//                             child: Column(
//                               children: [
//                                 Image.asset(
//                                   item["image"]!,
//                                   height: 100,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 SizedBox(height: 20),
//                                 Text(
//                                   item["name"]!,
//                                   style: TextStyle(fontSize: 15),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                         itemCount: farmlist.length,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Container(
//                         height: 200,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://images.unsplash.com/photo-1441123285228-1448e608f3d5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(3.0),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Best Selling Products",
//                           style: TextStyle(
//                             fontSize: 20,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: GridView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           crossAxisSpacing: 5,
//                           mainAxisSpacing: 5,
//                         ),
//                         itemBuilder: (context, index) {
//                           final productlist = productList[index];
//                           return ProductCard(productlist: productlist);
//                         },
//                         itemCount: productList.length,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(2.1),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           fixedSize: Size(440, 30),
//                           backgroundColor: Colors.green,
//                         ),
//                         child: Text(
//                           "View More",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Container(
//                         height: 200,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://images.unsplash.com/photo-1568741046857-fc1d0486e285?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(3.0),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Our Blog Posts",
//                           style: TextStyle(
//                             fontSize: 20,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Container(
//                         height: 150,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: blogList.length,
//                           itemBuilder: (context, index) {
//                             final blog = blogList[index];
//                             return Padding(
//                               padding: EdgeInsets.all(5.0),
//                               child: Column(
//                                 children: [
//                                   Image.asset(
//                                     blog["image"]!,
//                                     height: 100,
//                                   ),
//                                   SizedBox(height: 5),
//                                   Text(blog["description"]!),
//                                 ],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
//         ],
//       ),
//     );
//   }
// }
//
// class ProductCard extends StatelessWidget {
//   final Map<String, dynamic> productlist;
//   const ProductCard({required this.productlist});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.network(
//             productlist["image"],
//             height: 100,
//             width: double.infinity,
//             fit: BoxFit.contain,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   productlist["name"],
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 2),
//                 if (productlist.containsKey("discount"))
//                   Text(
//                     productlist["discount"],
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 SizedBox(height: 5),
//                 Row(
//                   children: [
//                     Text(
//                       "₹${productlist["price"]}",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     if (productlist.containsKey("originalPrice"))
//                       Padding(
//                         padding: const EdgeInsets.only(left: 9.0),
//                         child: Text(
//                           "₹${productlist["originalPrice"]}",
//                           style: TextStyle(
//                             color: Colors.grey,
//                             decoration: TextDecoration.lineThrough,
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   children: [
//                     Text(productlist["unit"]),
//                     SizedBox(width: 30),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         alignment: Alignment.bottomLeft,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text(
//                         "ADD",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

