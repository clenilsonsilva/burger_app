import 'package:flutter/material.dart';
import '../class/items.dart';
import '../class/listcard.dart';
import '../header/header.dart';
import 'categories.dart';
import 'hamburguer_list.dart';
import '../widgets/DrawerWidget.dart';
import '../cart_page/shippin_page.dart';

class HomePage extends StatelessWidget {
  //Pagina inicial
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
                  const Header(), //Container Verde
                  Categories(), //Tabs para selecionar os items
                  HamburgueList(
                    //current seleciona a lista a ser mostrada e a posicao seleciona o item da lista a ser selecionado
                    map_0: listcategories(
                        currentselecteditemhome.value)[0], 
                    map_1: listcategories(
                        currentselecteditemhome.value)[1], 
                  ),

                  HamburgueList(
                    map_0: listcategories(
                        currentselecteditemhome.value)[2], 
                    map_1: listcategories(
                        currentselecteditemhome.value)[3], 
                  ),

                  currentselecteditemhome.value == 0 ||currentselecteditemhome.value==1 ||currentselecteditemhome.value==2
                      ? HamburgueList(
                          map_0: listcategories(
                              currentselecteditemhome.value)[4], //lista pizza
                          map_1: listcategories(
                              currentselecteditemhome.value)[5], //lista hotdog
                        )
                      : const SliverToBoxAdapter(),

                  currentselecteditemhome.value == 0 || currentselecteditemhome.value==1 || currentselecteditemhome.value==2
                      ? HamburgueList(
                          map_0: listcategories(
                              currentselecteditemhome.value)[6], //lista pizza
                          map_1: listcategories(
                              currentselecteditemhome.value)[7], //lista hotdog
                        )
                      : const SliverToBoxAdapter(),

                  currentselecteditemhome.value == 1
                      ? HamburgueList(
                          map_0: listcategories(
                              currentselecteditemhome.value)[8], //lista pizza
                          map_1: listcategories(
                              currentselecteditemhome.value)[9], //lista hotdog
                        )
                      : const SliverToBoxAdapter(),

                  currentselecteditemhome.value == 1
                      ? HamburgueList(
                          map_0: listcategories(
                              currentselecteditemhome.value)[10], //lista pizza
                          map_1: listcategories(
                              currentselecteditemhome.value)[11], //lista hotdog
                        )
                      : const SliverToBoxAdapter(),

                ],
              );
            },
          ),
          ValueListenableBuilder(
            /* listreturnotifier e um valuenotifier que retorna quantos produtos estao no carrinho
            ao adicionar um item no carrinho ele habilita a opcao de entrar no carrinho
            */
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
                            /* total() e uma funcao que acessa invidualmente os valores de cada produto no carrinho 
                            e multiplica pela quantidade do produto (obs: todos os produtos tem seus notifiers 
                            inviduais assim podem ser editados individulamente)*/
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
                      /* ao clicar no container e direcionado para o carrinho, o container so aparece se o carrinho
                       nao estiver vazio */
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShippingPage()),
                      );
                    },
                  ),
                );
              } else {
                //jeito que achei de usar um widget nullo
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
