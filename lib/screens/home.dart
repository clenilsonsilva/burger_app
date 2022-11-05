// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/header_home.dart';
import '../utils/categories.dart';
import '../utils/hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';
import 'shippin_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: DrawerWidget(),
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
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: const [
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
      // drawer: DrawerWidget(),
      // extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.home),
      // ),
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.vertical(
      //     top: Radius.circular(45),
      //   ),
      //   child: BottomAppBar(
      //     shape: const CircularNotchedRectangle(),
      //     child: Row(
      //       children: [
      //         const Spacer(),
      //         IconButton(
      //           onPressed: (() {}),
      //           icon: const Icon(Icons.add_alert),
      //           color: Colors.white,
      //         ),
      //         const Spacer(),
      //         const Spacer(),
      //         IconButton(
      //           onPressed: (() {}),
      //           icon: const Icon(Icons.turned_in),
      //           color: Colors.white,
      //         ),
      //         const Spacer(),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
