import 'package:flutter/material.dart';
import '../utils/header_home.dart';
import '../utils/categories.dart';
import '../utils/hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';

class HomePage extends StatefulWidget {
  static const tag = 'home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Hamburgueria'),
        actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed('shipping_page');
                },
              )
            ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          HeaderHome(),
          Categories(),
          HamburgueList(
            row: 1,
          ),
          HamburgueList(
            row: 2,
          ),
          HamburgueList(
            row: 1,
          ),
          HamburgueList(
            row: 2,
          ),
        ],
      ),
    );
  }
}
