import 'package:flutter/material.dart';
import 'package:flutter_cep/header/header.dart';
import '../body/body_desc.dart';
import '../widgets/burgerbottonnavbar.dart';
import '../widgets/shop_icon_appbar.dart';

class BurgerPage extends StatelessWidget {
  static const tag = 'burger_page';
  final String nome, desc, image;
  final double rating;
  final int minutes;
  final num valor;
  const BurgerPage(
      {super.key,
      required this.nome,
      required this.desc,
      required this.rating,
      required this.minutes,
      required this.valor,
      required this.image});

  @override
  Widget build(BuildContext context) {
    int counter = 1;
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
            imagem: image,
          ),
          BodyDesc(
              valor: valor,
              nome: nome,
              desc: desc,
              rating: rating,
              minutes: minutes)
        ],
      ),
      bottomNavigationBar: const BurgerBottonNavBar(),
    );
  }
}
