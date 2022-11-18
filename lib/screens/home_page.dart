import 'package:flutter/material.dart';
import '../class/items.dart';
import '../class/listcard.dart';
import '../header/header.dart';
import '../body/categories.dart';
import '../body/hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/shop_icon_appbar.dart';

class HomePage extends StatelessWidget {
  static const tag = 'home_page';
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(listreturnotifier.value);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Hamburgueria'),
        actions: listreturn().isNotEmpty ? const [ShopIconAppBar()] : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: currentselecteditem,
            builder: (context, value, child) {
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  HeaderTeste(
                    a: 'home',
                    imagem: 'a',
                  ),
                  Categories(
                  ),
                  HamburgueList(
                    map_0: categories(currentselecteditem.value)[0],
                    map_1: categories(currentselecteditem.value)[1],
                    tab: currentselecteditem,
                  ),
                  HamburgueList(
                    map_0: categories(currentselecteditem.value)[2],
                    map_1: categories(currentselecteditem.value)[3],
                    tab: currentselecteditem,
                  ),
                ],
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: listreturnotifier,
            builder: (context, value, child) {
              if(listreturnotifier.value>0) {
                return Positioned(
                left: 10,
                right: 10,
                bottom: size.height / 30,
                child: Container(
                  height: size.height / 13,
                  width: size.width,
                  color: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.white,
                                  size: size.width / 13,
                                ),
                                Text(
                                  '${listreturnotifier.value}',
                                  style: TextStyle(
                                    fontSize: size.width / 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                              SizedBox(width: size.width / 12),
                              Text(
                                'VER TICKET',
                                style: TextStyle(
                                  fontSize: size.width / 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'R\$ ${total()},00',
                            style: TextStyle(
                              fontSize: size.width / 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                  ),
                );
              }
              else{
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
