import 'package:flutter/material.dart';
import '../class/items.dart';
import '../header/header.dart';
import '../body/categories.dart';
import '../body/hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/shop_icon_appbar.dart';

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
        actions: const [ShopIconAppBar()],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          HeaderTeste(a: 'home', imagem: 'a',),
          const Categories(),
          HamburgueList(
            map_0: baconburger(),
            map_1: chickenburger(),
          ),
          HamburgueList(
            map_0: cheeseburger(),
            map_1: veggibuger(),
          ),

        ],
      ),
    );
  }
}
