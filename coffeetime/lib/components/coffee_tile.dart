import 'package:coffeetime/models/coffee.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
