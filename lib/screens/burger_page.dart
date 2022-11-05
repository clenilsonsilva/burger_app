import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cep/utils/body_desc.dart';
import 'package:flutter_cep/utils/header_desc.dart';

import '../utils/header_home.dart';

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
            onPressed: () {},
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
    );
  }
}
