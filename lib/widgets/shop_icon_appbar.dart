import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/shippin_page.dart';

class ShopIconAppBar extends StatelessWidget {
  const ShopIconAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ShippingPage()),
  );
      },
    );
  }
}

