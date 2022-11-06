import 'package:flutter/material.dart';
import '../utils/body_desc.dart';
import '../utils/header_desc.dart';
import '../widgets/burgerbottonnavbar.dart';

class BurgerPage extends StatefulWidget {
  static const tag = 'burger_page';
  const BurgerPage({super.key});

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('shipping_page');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          HeaderDesc(),
          BodyDesc(),
        ],
      ),
      bottomNavigationBar: const BurgerBottonNavBar(),
    );
  }
}
