import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/burger_page.dart';

// ignore: must_be_immutable
class HamburgueList extends StatelessWidget {
  final Map map_0, map_1;
  final ValueNotifier<int> tab;
  const HamburgueList({
    super.key,
    required this.map_0,
    required this.map_1,
    required this.tab,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int items = 2;
    Widget baconImage = SizedBox(
      height: map_0['height'],
      width: map_0['width'],
      child: Image.asset(map_0['images']),
    );

    Widget chickenImage = SizedBox(
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
            bool reverse = map_1['row'] == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: size.width / 1.7,
                  width: size.width / 2.05,
                  margin: const EdgeInsets.only(left: 7),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurgerPage(
                                  map: reverse ? map_0 : map_1,
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
                              reverse ? map_0['nome'] : map_1['nome'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  reverse
                                      ? 'R\$ ${map_0['valor']},00'
                                      : 'R\$ ${map_1['valor']},00',
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
                  top: reverse ? map_0['top'] : map_1['top'],
                  left: reverse ? map_0['left'] : map_1['left'],
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurgerPage(
                                  map: reverse ? map_0 : map_1,
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
