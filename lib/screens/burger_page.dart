import 'package:flutter/material.dart';
import 'package:flutter_cep/header/header.dart';
import '../body/body_desc.dart';
import '../widgets/burgerbottonnavbar.dart';
import '../widgets/shop_icon_appbar.dart';

class BurgerPage extends StatelessWidget {
  static const tag = 'burger_page';
  final Map map;
  const BurgerPage({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    final counter = ValueNotifier<int>(1);
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
          HeaderTeste(
            a: 'burger',
            imagem: map['images'],
          ),
          BodyDesc(
              valuen: counter,
              map: map,)
        ],
      ),
      bottomNavigationBar: BurgerBottonNavBar(
        counter: counter,
        valor: map['valor'],
        nome: map['nome'],
      ),
    );
  }
}
