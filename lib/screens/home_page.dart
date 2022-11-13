import 'package:flutter/material.dart';
import 'package:flutter_cep/class/listcard.dart';
import '../class/items.dart';
import '../header/header.dart';
import '../body/categories.dart';
import '../body/hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/shop_icon_appbar.dart';

class HomePage extends StatelessWidget {
  final tab = ValueNotifier<int>(0);
  static const tag = 'home_page';
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Hamburgueria'),
        actions: listreturn().isNotEmpty ? const [ShopIconAppBar()] : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ValueListenableBuilder(
        valueListenable: tab,
        builder: (context, value, child) {
          return CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              HeaderTeste(
                a: 'home',
                imagem: 'a',
              ),
              Categories(
                currentselecteditem: tab,
              ),
              HamburgueList(
                map_0: categories(tab.value)[0],
                map_1: categories(tab.value)[1],
                tab: tab,
              ),
              HamburgueList(
                map_0: categories(tab.value)[2],
                map_1: categories(tab.value)[3],
                tab: tab,
              ),
            ],
          );
        },
      ),
    );
  }
}
