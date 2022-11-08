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
          HeaderTeste(a: 'home', imagem: 'a',),
          const Categories(),
          const HamburgueList(
            images_0: 'images/bacon.png',
            images_1: 'images/chicken.png',
            nome_0: 'Bacon Burger',
            nome_1: 'Chicken Burger',
            valor_0: 15,
            valor_1: 20,
            row: 1,
            height_0: 170,
            width_0: 170,
            height_1: 170,
            width_1: 170, 
            desc_0: 'Hamburguer Bacon with ham and cheese, Hamburger Sushi Pizza Cheeseburger, burger king, food, recipe, cheese ', 
            desc_1: 'Hamburger Chicken burger sandwich Fast food, hamburger, burger, burger sandwich, food, recipe, cheeseburger', 
            minutes_0: 30,
            minutes_1: 30, 
            rating_0: 5, 
            rating_1: 4,
          ),
          const HamburgueList(
            images_0: 'images/cheese.png',
            images_1: 'images/veggie.png',
            nome_0: 'Cheese Burger',
            nome_1: 'Veggie Burger',
            valor_0: 15,
            valor_1: 20,
            row: 1,
            height_0: 170,
            width_0: 170,
            height_1: 160,
            width_1: 150,
            desc_0: 'Hamburger Cheese burger Fast food Cheeseburger Buffalo burger, Burger, food, cheese, nutrition', 
            desc_1: 'Hamburger Veggie burger Take-out Fast food Kebab, Delicious beef burger, burger with lettuce, tomato, and cheese, food, beef, recipe', 
            minutes_0: 30,
            minutes_1: 30, 
            rating_0: 4, 
            rating_1: 5,
          ),

        ],
      ),
    );
  }
}
