
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:social_medias/farm_fresh_zone/provider/CartProvider.dart';
import 'blog.dart';
import 'cart.dart';
import 'farmproductlist.dart';
import 'freshfarmlist.dart';

void main() {
  runApp(
    MultiProvider(
        providers:[
          ChangeNotifierProvider(
              create: (context)=>CartProvider()),
        ],//initailizing CartProvider and wrap the app with ChangeaNotifierProvider
      child: MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    )
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var product_to_cart=context.watch<CartProvider>().cartItems;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            title: Text(
              "Farmers Fresh Zone",
              style: GoogleFonts.firaSansCondensed(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on_outlined, color: Colors.white),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Cart()));
                    },
                    icon: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  Positioned(
                    right: 7,
                    top: 7,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 14,
                        minHeight: 14,
                      ),
                      child: Text(
                        '${Provider.of<CartProvider>(context).cartItemCount}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              )
            ],
            floating: true,
            pinned: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Search for vegetables and fruits",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Container(
                      child: Row(
                        verticalDirection: VerticalDirection.up,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: () {}, child: Text("OFFERS")),
                          TextButton(onPressed: () {}, child: Text("VEGETABLES")),
                          TextButton(onPressed: () {}, child: Text("FRUITS")),
                          TextButton(onPressed: () {}, child: Text("EXOTIC")),
                          TextButton(onPressed: () {}, child: Text("FRESH CUTS")),
                          // TextButton(onPressed: () {},
                          //     child: Text("NUTRITION FRUITS")),
                        ],
                      ),
                    ),
                    CarouselSlider(
                      items: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1516594798947-e65505dbb29d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1698309377471-54a87740d979?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 2,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.timer_outlined),
                              Text("30 MIN POLICY"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.verified_outlined),
                              Text("TRACEABILITY"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.local_florist_outlined),
                              Text("LOCAL SOURCING"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Shop By Category",
                            style:TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemBuilder: (context, index) {
                          final item = farmlist[index];
                          return Card(
                            child: Column(
                              children: [
                                Image.network(
                                  item["image"]!,
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 20,),
                                Text(item["name"]!,style: TextStyle(fontSize: 15),),
                              ],
                            ),
                          );
                        },
                        itemCount: farmlist.length,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1441123285228-1448e608f3d5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                    child: Align(
                           alignment: Alignment.centerLeft,
                            child: Text("Best Selling Products",
                              style:TextStyle(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemBuilder: (context, index) {
                            final productlist = productList[index];
                            return ProductCard(productlist: productlist);
                          },
                          itemCount: productList.length,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(2.1),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          fixedSize:Size( 440,30),
                          backgroundColor: Colors.green,
                        ),
                        child: Text("View More",
                          style: TextStyle(
                              color: Colors.white
                          ),)),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://images.unsplash.com/photo-1568741046857-fc1d0486e285?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Our Blog Posts",
                            style:TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                    child:Container(
                      height: 200,
                      child:ListView.builder(
                         scrollDirection: Axis.horizontal,
                          itemCount: blogList.length,
                          itemBuilder:(context,index){
                            final blog=blogList[index];
                            return Card(
                                child: Padding(padding: EdgeInsets.all(4.3),
                                child: Column(
                                  children: [
                                    Image.network(blog["image"]!,
                                      height: 100,
                                      width: 150,
                                    ),
                                    SizedBox(height: 4,),
                                    Text(blog["discription"]!),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Text(blog["post"]!),
                                        SizedBox(width: 15,),
                                        IconButton(onPressed: (){},
                                            icon:Icon(Icons.navigate_next))
                                      ],
                                    )
                                  ],
                                ),),
                            );
                     }
                     ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("What Our Customers Say?",
                            style:TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Row(
                        children: [
                          CircleAvatar(
                                  radius: 28,
                                  backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
                                             ),
                                   SizedBox(width: 10,),
                                   Column(
                                   children: [
                                    Text("Shalini Warrier", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,),),
                                    Text("Executive Director,Federal Bank"),
                                             ],
                                   )
                                   ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'A friend of mine recommended Farmers Fresh Zone to me, during the first lockdown in March 2020 & I have been a regular customer ever since! You get reliable service, convenient doorstep delivery, reasonable prices & super fresh products at your fingertips with their really easy-to-use app! I have been recommending my friends & family to switch to a healthier lifestyle with Farmers Fresh Zone.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    ),
                   SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'This Kochi-based farm-to-fork online marketplace is connecting \n farmers directly to customers',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network("assets/images/foxnews.png",height: 40,width: 40,),
                        SizedBox(width: 50,),
                        Image.network("assets/images/crowd.png",height: 40,width: 40,),
                        SizedBox(width: 50,),
                        Image.network("assets/images/times.png",height: 40,width: 40,),
                        SizedBox(width: 50,),
                        Image.network("assets/images/globe.png",height: 40,width: 40,),
                      ],
                    ),
                    Divider(
                      thickness: 7,
                      color: Colors.grey,
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Get To Know Us",
                            style:TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text("About Us",style: TextStyle(color: Colors.grey),)),
                        SizedBox(width: 4,),
                        TextButton(onPressed: (){}, child: Text("Our Farmers",style: TextStyle(color: Colors.grey))),
                        SizedBox(width: 4,),
                        TextButton(onPressed: (){}, child: Text("Blog",style: TextStyle(color: Colors.grey))),

                      ],
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Useful Links",
                            style:TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                    ),
                    Padding(padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){}, child: Text("Privacy Policy",style: TextStyle(color: Colors.grey),)),
                          SizedBox(width: 4,),
                          TextButton(onPressed: (){}, child: Text("Return & Reffund Policy",style: TextStyle(color: Colors.grey))),
                          SizedBox(width: 4,),
                          TextButton(onPressed: (){}, child: Text("Terms & Condition",style: TextStyle(color: Colors.grey))),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(20.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 16,),
                        FaIcon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                        SizedBox(width: 16,),
                        FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 16,),
                        FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green
                      ),
                      child:Align(
                        alignment: Alignment.center,
                      child:  Text("Copy @ 2021 Framers Freash Zone.\n  All Right Reserved.V2.40.22"),
                      )

                    )

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));

          }, child: Icon(Icons.home)),label: "Home"),

          BottomNavigationBarItem(icon: ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Cart()));

          },     child:   Icon(Icons.shopping_cart),), label: "Cart"),
          BottomNavigationBarItem(icon:ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));

          },      child: Icon(Icons.person), ),label: "Account"),
        ],
      ),
    );
  }
}


// create class for selling products in grid view  ProductCard()
class ProductCard extends StatelessWidget {
final Map<String, dynamic> productlist;
  const ProductCard({required this.productlist});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            productlist["image"] ,
            height: 100,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productlist["name"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                if (productlist.containsKey("discount"))
                  Text(
                    productlist["discount"],
                    style: TextStyle(color: Colors.red),
                  ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "₹${productlist["price"]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    if (productlist.containsKey("originalPrice"))
                      Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: Text(
                          "₹${productlist["originalPrice"]}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,//strike on orginal price
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(productlist["unit"]),
                    SizedBox(width: 30,),
                    ElevatedButton(
                      onPressed: () {
                        Provider.of<CartProvider>(context, listen: false).addToCart(productlist);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Added to cart')),
                        );
                      },
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.green,
                         alignment: Alignment.bottomLeft,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10)
                         )
                     ),
                      child: Text("ADD",
                        style: TextStyle(color: Colors.white),),

                  )]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

