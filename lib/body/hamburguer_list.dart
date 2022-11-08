import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/burger_page.dart';

class HamburgueList extends StatelessWidget {
  final String images_0, images_1, nome_0, nome_1, desc_0, desc_1;
  final int row, minutes_0, minutes_1;
  final num valor_0, valor_1;
  final double height_0, width_0, height_1, width_1, rating_0, rating_1;
  const HamburgueList({
    super.key,
    required this.images_0,
    required this.images_1,
    required this.nome_0,
    required this.nome_1,
    required this.valor_0,
    required this.valor_1,
    required this.row,
    required this.height_0,
    required this.width_0,
    required this.height_1,
    required this.width_1,
    required this.desc_0,
    required this.desc_1,
    required this.rating_0,
    required this.rating_1,
    required this.minutes_0,
    required this.minutes_1,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int items = 2;
    Widget baconImage = SizedBox(
      height: height_0,
      width: width_0,
      child: Image.asset(images_0),
    );

    Widget chickenImage = SizedBox(
      height: height_1,
      width: width_1,
      child: Image.asset(images_1),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: size.width / 1.7,
                  width: size.width / 2.05,
                  margin: const EdgeInsets.only(left: 7, right: 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurgerPage(
                                  nome: reverse ? nome_0 : nome_1,
                                  desc: reverse ? desc_0 : desc_1,
                                  rating: reverse ? rating_0 : rating_1,
                                  minutes: reverse ? minutes_0 : minutes_1,
                                  valor: reverse ? valor_0 : valor_1,
                                  image: reverse ? images_0 : images_1,
                                )),
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
                              reverse ? nome_0 : nome_1,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  reverse
                                      ? 'R\$ $valor_0,00'
                                      : 'R\$ $valor_1,00',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(Icons.add),
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
                  top: reverse ? 25 : 25,
                  left: reverse ? -10 : -5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurgerPage(
                                  nome: reverse ? nome_0 : nome_1,
                                  desc: reverse ? desc_0 : desc_1,
                                  rating: reverse ? rating_0 : rating_1,
                                  minutes: reverse ? minutes_0 : minutes_1,
                                  valor: reverse ? valor_0 : valor_1,
                                  image: reverse ? images_0 : images_1,
                                )),
                      );
                    },
                    child: reverse ? baconImage : chickenImage,
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
