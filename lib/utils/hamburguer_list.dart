import 'package:flutter/material.dart';


class HamburgueList extends StatelessWidget {
  final int row;
  const HamburgueList({super.key, required this.row});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int items = 2;
    Widget baconImage = SizedBox(
      height: 170,
      width: 170,
      child: Image.asset("images/bacon-j.png"),
    );

    Widget chickenImage = SizedBox(
      height: 170,
      width: 170,
      child: Image.asset("images/burguer_c.png"),
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
                  height: size.width/1.7,
                  width: size.width/2.05,
                  margin:
                      const EdgeInsets.only(left: 7, right: 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('burger_page');
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
                              reverse ?'Bacon Burger' : 'Chicken Burger',
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  '10,00 \$ CAN',
                                  style: TextStyle(
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
                      Navigator.of(context).pushNamed('burger_page');
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
