import 'package:flutter/material.dart';

class ShopIconAppBar extends StatelessWidget {
  const ShopIconAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        Navigator.of(context).pushNamed('shipping_page');
      },
    );
  }
}

