import 'package:flutter/material.dart';
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
          HeaderTeste(a: 'home'),
          const Categories(),
          const HamburgueList(
            images_0: 'images/bacon-j.png',
            images_1: 'images/burguer_c.png',
            nome_0: 'Bacon Burger',
            nome_1: 'Chicken Burger',
            valor_0: '15',
            valor_1: '15',
            row: 1,
            height_0: 170,
            width_0: 170,
            height_1: 170,
            width_1: 170,
          ),
          const HamburgueList(
            images_0: 'images/cheese.png',
            images_1: 'images/veggie.png',
            nome_0: 'Cheese Burger',
            nome_1: 'Veggie Burger',
            valor_0: '15',
            valor_1: '15',
            row: 1,
            height_0: 170,
            width_0: 170,
            height_1: 170,
            width_1: 170,
          ),

        ],
      ),
    );
  }
}
