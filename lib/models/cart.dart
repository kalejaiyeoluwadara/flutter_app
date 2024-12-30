import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREAK',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'assets/images/NIKE-WAFFLE.jpg',
        price: '216'),
    Shoe(
        name: 'ZOOM FREAK',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'assets/images/NIKE-WAFFLE.jpg',
        price: '216'),
    Shoe(
        name: 'ZOOM FREAK',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'assets/images/NIKE-WAFFLE.jpg',
        price: '216'),
    Shoe(
        name: 'ZOOM FREAK',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'assets/images/NIKE-WAFFLE.jpg',
        price: '216'),
  ];

  List<Shoe> userCart = [];
  List<Shoe> getShoeList(int index) {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
