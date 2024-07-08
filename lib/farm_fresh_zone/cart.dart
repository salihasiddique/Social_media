
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_medias/farm_fresh_zone/provider/CartProvider.dart';
import 'home_page.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    //final cart = Provider.of<CartProvider>(context);
    final clist = (context).watch<CartProvider>().cartItems;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.greenAccent[400],
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
            floating: true,
            pinned: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                color: Colors.greenAccent[400],
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
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My Cart, ${clist.length}",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 600, // Set a proper height
                      child: ListView.builder(
                        itemCount: clist.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final item = clist[index];
                          return ListTile(
                            leading: Image.network(
                              item["image"],
                              height: 100,
                              width: 100, // Specify width to avoid stretching
                              fit: BoxFit.contain,
                            ),
                            title: Text(item["name"]),
                            subtitle: Text("\$${item["price"]}"), // Assuming price is a string
                            trailing: IconButton(
                              onPressed: () {
                                context.read<CartProvider>().removeFromCart(clist[index]);
                                ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text("Removed from cart"),),);
                                // clist. removeFromCart(item);
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   SnackBar(
                                //     content: Text("Removed from cart"),
                                //   ),
                                // );
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
