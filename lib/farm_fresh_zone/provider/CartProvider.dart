// import 'package:flutter/cupertino.dart';
//
// import '../farmproductlist.dart';
//
// class CartProvider with ChangeNotifier{
//   List<Product>_cart=[];
//
//   List<Product> get cart=>_cart;
//
//   void addProductToCart(Product product){
//     _cart.add(product);
//     notifyListeners();
//   }
//   void removeProductFromCart(Product,product){
//     _cart.remove(product);
//     notifyListeners();
//   }
// }
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {

  final List<Map<String, dynamic>> _cartItems = [];
  List<Map<String, dynamic>> get cartItems => _cartItems;

  void addToCart(Map<String, dynamic> product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> product) {
    _cartItems.remove(product);
    notifyListeners();
  }
  int get cartItemCount => _cartItems.length;

}