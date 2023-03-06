import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class CartRowItem extends StatelessWidget {
  const CartRowItem({
    required this.cart,
    super.key
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(3),
        ),
        title: Text(cart.productName),
      ),
    );
  }
}
