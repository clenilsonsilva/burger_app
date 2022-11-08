import 'package:flutter/material.dart';
import 'package:flutter_cep/header/header.dart';
import '../body/body_desc.dart';
import '../widgets/burgerbottonnavbar.dart';
import '../widgets/shop_icon_appbar.dart';

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
        actions: const [ShopIconAppBar()],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          HeaderTeste(a: 'burger',),
          const BodyDesc(),
        ],
      ),
      bottomNavigationBar: const BurgerBottonNavBar(),
    );
  }
}
