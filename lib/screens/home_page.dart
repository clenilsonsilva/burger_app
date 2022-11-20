import 'package:flutter/material.dart';
import '../class/items.dart';
import '../class/listcard.dart';
import '../header/header.dart';
import '../body/categories.dart';
import '../body/hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';
import 'shippin_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Hamburgueria'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ValueListenableBuilder(
            /*currentselecteditemhome e um valuenotifier localizado em listcard (local externo)
            e escuta as mudancas feitas nas categorias*/
            valueListenable: currentselecteditemhome, 
            builder: (context, value, child) {
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  const Header(),
                  Categories(),
                  HamburgueList(
                    map_0: listcategories(currentselecteditemhome.value)[0],
                    map_1: listcategories(currentselecteditemhome.value)[1],
                  ),
                  HamburgueList(
                    map_0: listcategories(currentselecteditemhome.value)[2],
                    map_1: listcategories(currentselecteditemhome.value)[3],
                  ),
                ],
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: listreturnotifier,
            builder: (context, value, child) {
              if (listreturnotifier.value > 0) {
                return Positioned(
                  left: 10,
                  right: 10,
                  bottom: size.height / 50,
                  child: GestureDetector(
                    child: Container(
                      height: size.height / 20,
                      width: size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.brown.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(5)),
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShippingPage()),
                      );
                    },
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
