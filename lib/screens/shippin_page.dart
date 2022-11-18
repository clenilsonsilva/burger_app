import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/listcard.dart';

class ShippingPage extends StatelessWidget {
  final teste = ValueNotifier<int>(listreturn().length);
  final subtotal = ValueNotifier<num>(total());
  ShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    num entrega = 8;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Order List'),
          centerTitle: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context)
                  .pop(listreturnotifier.value = listreturn().length);
            },
          ),
          backgroundColor: Colors.teal),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: size.height / 1.26,
            width: size.width,
            child: ValueListenableBuilder(
              valueListenable: teste,
              builder: (context, value, child) {
                if (listreturn().isNotEmpty) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listreturn().length,
                    itemBuilder: (context, index) {
                      // print(notar().length);
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
                              child: ValueListenableBuilder(
                                  valueListenable: listreturn()[index]
                                      ['notifier'],
                                  builder: (context, value, child) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          child: Image.asset(
                                            listreturn()[index]['imagem'],
                                            height: size.height / 3,
                                            width: size.width / 2.5,
                                          ),
                                        ),
                                        SizedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                listreturn()[index]['nome'],
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
                                                          color: listreturn()[index]
                                                                          [
                                                                          'notifier']
                                                                      .value ==
                                                                  1
                                                              ? Colors.teal
                                                                  .withOpacity(
                                                                      0.3)
                                                              : Colors.teal,
                                                          size: size.width / 15,
                                                        ),
                                                        onPressed: listreturn()[
                                                                            index]
                                                                        [
                                                                        'notifier']
                                                                    .value ==
                                                                1
                                                            ? null
                                                            : () {
                                                                listaddcount(
                                                                    index,
                                                                    listreturn()[index]['notifier']
                                                                            .value -
                                                                        1);
                                                                subtotal.value =
                                                                    total();
                                                              },
                                                      ),
                                                      Text(
                                                        '${listreturn()[index]['notifier'].value}',
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
                                                          color: listreturn()[index]
                                                                          [
                                                                          'notifier']
                                                                      .value ==
                                                                  10
                                                              ? Colors.teal
                                                                  .withOpacity(
                                                                      0.3)
                                                              : Colors.teal,
                                                          size: size.width / 15,
                                                        ),
                                                        onPressed: listreturn()[
                                                                            index]
                                                                        [
                                                                        'notifier']
                                                                    .value ==
                                                                10
                                                            ? null
                                                            : () {
                                                                listaddcount(
                                                                    index,
                                                                    listreturn()[index]['notifier']
                                                                            .value +
                                                                        1);
                                                                subtotal.value =
                                                                    total();
                                                              },
                                                      ),
                                                    ],
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        listadelvoid(index);
                                                        teste.value =
                                                            listreturn().length;
                                                        subtotal.value =
                                                            total();
                                                        if (teste.value == 0) {
                                                          Navigator.of(context)
                                                              .pop(listreturnotifier.value=listreturn().length);
                                                        }
                                                      },
                                                      icon: Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.teal,
                                                        size: size.width / 15,
                                                      )),
                                                ],
                                              ),
                                              Text(
                                                '${listreturn()[index]['notifier'].value * listreturn()[index]['valor']}\$',
                                                style: TextStyle(
                                                    fontSize: size.width / 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.teal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                          ),
                          index == teste.value - 1
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
                                          valueListenable: subtotal,
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
                } else {
                  return const SizedBox();
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
                      valueListenable: subtotal,
                      builder: (context, value, child) => Text(
                            subtotal.value==0 ? '' : 'Total: R\$ ${subtotal.value + entrega},00',
                            style: TextStyle(
                              fontSize: size.height / 10 / 3.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          )),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Order Now',
                  style: TextStyle(
                      fontSize: size.height / 10 / 3.5, color: Colors.teal),
                ),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: false,
    );
  }
}
