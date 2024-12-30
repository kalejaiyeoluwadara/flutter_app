import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/cart_item.dart';
import 'package:flutter_application_2/models/cart.dart';
import 'package:flutter_application_2/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'My cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              Shoe individualShoe = value.getUserCart()[index];
              return CartItem(shoe: individualShoe);
            },
          )),
        ],
      );
    });
  }
}
