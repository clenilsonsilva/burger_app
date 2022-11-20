import 'package:flutter/material.dart';
import 'package:flutter_cep/header/header.dart';
import '../body/body_desc.dart';
import '../widgets/burgerbottonnavbar.dart';

class BurgerPage extends StatelessWidget {
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          Header(
            imagem: map['images'],
          ),
          BodyDesc(
              valuen: counter,
              map: map,)
        ],
      ),
      bottomNavigationBar: BurgerBottonNavBar(
        counter: counter,
        map: map,
      ),
    );
  }
}
