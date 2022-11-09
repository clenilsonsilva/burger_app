import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cep/class/counter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BodyDesc extends StatelessWidget {
  final String nome, desc;
  final double rating;
  final int minutes;
  final num valor;
  final counter = ValueNotifier<int>(1);
  BodyDesc(
      {super.key,
      required this.valor,
      required this.nome,
      required this.desc,
      required this.rating,
      required this.minutes});

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
                            RatingBar(
                              itemSize: size.width / 20,
                              initialRating: rating,
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
                              'R\$ $valor,00',
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
                              nome,
                              style: TextStyle(
                                fontSize: size.width / 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ValueListenableBuilder(
                                valueListenable: counter,
                                builder: (context, value, child) {
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          CupertinoIcons.minus_circle,
                                          color: counter.value == 1 ? Colors.teal.withOpacity(0.3) : Colors.teal,
                                          size: size.width / 15,
                                        ),
                                        onPressed: counter.value == 1
                                            ? null
                                            : () {
                                                counter.value =
                                                    counterminus(counter.value);
                                              },
                                      ),
                                      Text(
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
                                          color: counter.value == 10 ? Colors.teal.withOpacity(0.3) : Colors.teal,
                                          size: size.width / 15,
                                        ),
                                        onPressed: counter.value == 10
                                            ? null
                                            : () {
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
                          textAlign: TextAlign.justify,
                          desc,
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
                                  '$minutes Minutes',
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
