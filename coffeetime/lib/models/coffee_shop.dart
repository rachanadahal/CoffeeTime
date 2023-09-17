import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale
  final List<Coffee> _shop = [
    Coffee(
        name: 'Long black',
        price: '4.10',
        imagePath: 'lib/images/longblack.png'),
    Coffee(name: 'Latte', price: '2.10', imagePath: 'lib/images/latte.png'),
    Coffee(
        name: 'Espresso', price: '3.10', imagePath: 'lib/images/expresso.png'),
    Coffee(
        name: 'Iced Coffee',
        price: '5.10',
        imagePath: 'lib/images/iced-coffee.png'),
  ];

  // user cart

  final List<Coffee> _userCart = [];
  // get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart
  List<Coffee> get userCart => _userCart;
  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove from cart
  void removeItemToCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
