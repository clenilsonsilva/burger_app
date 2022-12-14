import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../class/counter.dart';

class BodyDesc extends StatelessWidget {
  final Map map;
  final ValueNotifier<int> counter;
  const BodyDesc({super.key, required this.counter, required this.map});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 60,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //ratingbar pacote do pub.dev que permite meia estrela
                            RatingBar(
                              ignoreGestures: true,
                              itemSize: size.width / 20,
                              initialRating: map['rating'],
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: const Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                half: const Icon(
                                  Icons.star_half,
                                  color: Colors.red,
                                ),
                                empty: const Icon(Icons.star),
                              ),
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              onRatingUpdate: (rating) {},
                            ),
                            Text(
                              //valor do produto
                              'R\$ ${map['valor']},00',
                              style: TextStyle(
                                fontSize: size.width / 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              //nome do produto
                              map['nome'],
                              style: TextStyle(
                                fontSize: size.width / 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ValueListenableBuilder(
                              //counter escuta as mudancas feitas na quantidade do produto
                                valueListenable: counter,
                                builder: (context, value, child) {
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          CupertinoIcons.minus_circle,
                                          //desativa a cor do (-)
                                          color: counter.value == 1
                                              ? Colors.teal.withOpacity(0.3)
                                              : Colors.teal,
                                          size: size.width / 15,
                                        ),
                                        //desativa o botao se o valor for 1
                                        onPressed: counter.value == 1
                                            ? null
                                            : () {
                                              //se o valor for maior que 1 o botao habilita e ao clicar reduz o valor atual
                                                counter.value =
                                                    counterminus(counter.value);
                                              },
                                      ),
                                      Text(
                                        //mostra q quantidade do produto
                                        '${counter.value}',
                                        style: TextStyle(
                                          fontSize: size.width / 17,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          CupertinoIcons.plus_circle,
                                          //desativa a cor do botao (+)
                                          color: counter.value == 10
                                              ? Colors.teal.withOpacity(0.3)
                                              : Colors.teal,
                                          size: size.width / 15,
                                        ),
                                        //desativa o botao se o valor dor 10
                                        onPressed: counter.value == 10
                                            ? null
                                            : () {
                                              //se o valor for menor que 10 o botao ativa e ao clicar adiciona o valor
                                                counter.value =
                                                    counterplus(counter.value);
                                              },
                                      ),
                                    ],
                                  );
                                }),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          //descricao do produto
                          map['desc'],
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: size.width / 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery time:',
                              style: TextStyle(
                                fontSize: size.width / 23,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Icon(
                                    CupertinoIcons.clock,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  //tempo de emtrega em min
                                  '${map['time']} Minutes',
                                  style: TextStyle(
                                    fontSize: size.width / 23,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
