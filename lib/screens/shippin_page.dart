import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/counter.dart';
import '../class/listcard.dart';
// import '../widgets/cartbottonnavbar.dart';

class ShippingPage extends StatelessWidget {
  final teste = ValueNotifier<List>([1]);
  final List items;
  ShippingPage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    teste.value = items;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Order List'),
          centerTitle: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pushNamed('home_page');
            },
          ),
          backgroundColor: Colors.teal),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: const [
          //     Padding(
          //       padding: EdgeInsets.only(
          //         top: 20,
          //         left: 10,
          //         bottom: 10,
          //       ),
          //       child: Text(
          //         'Order List',
          //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //   ],
          // ),
          Container(
            height: size.height / 1.26,
            width: size.width,
            child: ValueListenableBuilder(
              valueListenable: teste,
              builder: (context, value, child) {
                if (fun(notar()).isNotEmpty) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: notar().length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: size.width,
                              height: size.height / 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      items[index]['imagem'],
                                      height: size.height / 3,
                                      width: size.width / 2.5,
                                    ),
                                  ),
                                  SizedBox(
                                    child: ValueListenableBuilder(
                                        valueListenable: notar()[index],
                                        builder: (context, value, child) {
                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                items[index]['nome'],
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                  fontSize: size.width / 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                          CupertinoIcons
                                                              .minus_circle,
                                                          color: notar()[index]
                                                                      .value ==
                                                                  1
                                                              ? Colors.teal
                                                                  .withOpacity(
                                                                      0.3)
                                                              : Colors.teal,
                                                          size: size.width / 15,
                                                        ),
                                                        onPressed: notar()[
                                                                        index]
                                                                    .value ==
                                                                1
                                                            ? null
                                                            : () {
                                                                notar()[index]
                                                                        .value =
                                                                    counterminus(
                                                                        notar()[index]
                                                                            .value);
                                                                teste.value =
                                                                    fun(notar());
                                                              },
                                                      ),
                                                      Text(
                                                        '${notar()[index].value}',
                                                        style: TextStyle(
                                                          fontSize:
                                                              size.width / 17,
                                                          color: Colors.teal,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      IconButton(
                                                        icon: Icon(
                                                          CupertinoIcons
                                                              .plus_circle,
                                                          color: notar()[index]
                                                                      .value ==
                                                                  10
                                                              ? Colors.teal
                                                                  .withOpacity(
                                                                      0.3)
                                                              : Colors.teal,
                                                          size: size.width / 15,
                                                        ),
                                                        onPressed: notar()[
                                                                        index]
                                                                    .value ==
                                                                10
                                                            ? null
                                                            : () {
                                                                // print();
                                                                notar()[index]
                                                                        .value =
                                                                    counterplus(
                                                                        notar()[index]
                                                                            .value);
                                                                teste.value =
                                                                    fun(notar());
                                                              },
                                                      ),
                                                    ],
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        print(index);
                                                        print(notar().removeAt(index));
                                                        teste.value =
                                                            fun(notar());
                                                        print(teste.value.length);
                                                        // index = index - 1;
                                                        print(index);
                                                      },
                                                      icon: Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.teal,
                                                        size: size.width / 15,
                                                      )),
                                                ],
                                              ),
                                              Text(
                                                '${notar()[index].value * items[index]['valor']}\$',
                                                style: TextStyle(
                                                    fontSize: size.width / 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.teal),
                                              ),
                                            ],
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          index == teste.value.length -1
                              ? Padding(
                                  padding: EdgeInsets.only(
                                      bottom: size.height / 30, top: 10),
                                  child: Container(
                                      height: size.height / 12,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: const Offset(0, 3),
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: ValueListenableBuilder(
                                          valueListenable: teste,
                                          builder: (context, value, child) {
                                            return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Subtotal: R\$ ${total()},00',
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                  const Text(
                                                    'Entrega: R\$ 8,00',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                ]);
                                          },
                                        ),
                                      )),
                                )
                              : const SizedBox(),
                        ],
                      );
                    },
                  );
                }
                else{
                  return SizedBox();
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: size.height / 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ValueListenableBuilder(
                      valueListenable: teste,
                      builder: (context, value, child) => Text(
                            'Total:  R\$ ${total() + 8},00',
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          )),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: size.height / 50,
                      horizontal: size.width / 15,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Text('Order Now'),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
    );
  }
}
