import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/burger_page.dart';

class HamburgueList extends StatelessWidget {
  //map0 e map1 sao as informacoes do produto da esquerda e direita
  final Map map_0, map_1;
  const HamburgueList({
    super.key,
    required this.map_0,
    required this.map_1,
  });

  @override
  Widget build(BuildContext context) {
    //as informacoes sao acessadas atraves do map
    Size size = MediaQuery.of(context).size;
    int items = 2;
    //imagem largura e altura do produto
    Widget imageLeft = SizedBox(
      height: map_0['height'],
      width: map_0['width'],
      child: Image.asset(map_0['images']),
    );

    Widget imageRight = SizedBox(
      height: map_1['height'],
      width: map_1['width'],
      child: Image.asset(map_1['images']),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            //map e a variavel que indetifica qual dos produto sera requisitado e guarda essas informacoes
            Map map = index == 0 ? map_1 : map_0;
            return Stack(
              children: [
                Container(
                  height: size.width / 1.7,
                  width: size.width / 2.05,
                  margin: const EdgeInsets.only(left: 7),
                  child: GestureDetector(
                    onTap: () {
                      //programa envia o map com as informacoes do produto que foi requisitado para a pagina de descricao
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BurgerPage(
                            map: map,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      )),
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(
                              //nome do produto
                              map['nome'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    //valor do produto
                                    'R\$ ${map['valor']},00',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  //posicao do produto, caso o produto esteja desalinhado mudar as variaveis no map do produto
                  top: map['top'],
                  left: map['left'],
                  right: map.containsKey('right') ? map['right'] : 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BurgerPage(
                            map: map,
                          ),
                        ),
                      );
                    },
                    child: index == 0 ? imageRight : imageLeft,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
