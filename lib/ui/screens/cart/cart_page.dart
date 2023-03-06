import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spacebar/ui/screens/cart/cart_row_item.dart';

import 'cart.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final Cart cart = Cart(
    1, Category.Cafe, "name", 2020
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: CartRowItem(
          cart: cart,
        ),
      ),
    );
  }
}
