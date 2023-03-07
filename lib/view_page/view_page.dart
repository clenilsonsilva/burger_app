import 'package:flutter/material.dart';
import 'package:flutter_cep/header/header.dart';
import 'body_desc.dart';
import '../widgets/burgerbottonnavbar.dart';

class BurgerPage extends StatelessWidget {
  //map recebe as informacoes do produto que foi clicado na homepage
  final Map map;
  const BurgerPage({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    //counter e o valuenotifier individual do produto, toda vez que a pagina e carregada o valor e setado para 1
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
            //header de descricao recebe uma imagem
            imagem: map['images'],
          ),
          BodyDesc(
            //body da pagina recebe o counter e o map com as infos do produto
              counter: counter,
              map: map,)
        ],
      ),
      bottomNavigationBar: BurgerBottonNavBar(
        //botao de navegacao recebe o counter e o map
        counter: counter,
        map: map,
      ),
    );
  }
}
