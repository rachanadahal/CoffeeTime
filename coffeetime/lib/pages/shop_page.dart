import 'package:coffeetime/components/coffee_tile.dart';
import 'package:coffeetime/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              const Text(
                'How Would You Like your coffee ?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 20),

              //list of Coffee to buy
              Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      Coffee eachCoffee = value.coffeeShop[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        onPressed: () => addToCart(eachCoffee),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
