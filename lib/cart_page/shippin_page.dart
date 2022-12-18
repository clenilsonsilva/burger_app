import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/listcard.dart';

class ShippingPage extends StatelessWidget {
  //tela do carrinho
  //subtotal e um notifier que retorna o ssbutotal dos produtos no carrinho
  final subtotal = ValueNotifier<num>(total());
  ShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    //valor da entrega
    num entrega = 8;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Order List'),
          centerTitle: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              //retorna para a homepage atualiza o notifier
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
              valueListenable: listreturnotifier,
              builder: (context, value, child) {
                //toda vez que houver uma mudanca no tamanho da lista do carrinho esse componente e rebuildado
                if (listreturn().isNotEmpty) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listreturn().length,
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
                              child: ValueListenableBuilder(
                                  //toda vez que houver uma mundanca na quantidade do produto o produto e rebuildado individualmente
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
                                                          //desabilita cor
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
                                                        //desabilita o botao do valor
                                                        onPressed: listreturn()[
                                                                            index]
                                                                        [
                                                                        'notifier']
                                                                    .value ==
                                                                1
                                                            ? null
                                                            : () {
                                                                //e passado o index atual e subtrai - 1 do produto clicado
                                                                listaddcount(
                                                                    index,
                                                                    listreturn()[index]['notifier']
                                                                            .value -
                                                                        1);
                                                                //o valor subtotal e atualizado
                                                                subtotal.value =
                                                                    total();
                                                              },
                                                      ),
                                                      Text(
                                                        //retorna a quantidade do produto
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
                                                          //desabilita a cor
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
                                                        //desabilita o clique do botao
                                                        onPressed: listreturn()[
                                                                            index]
                                                                        [
                                                                        'notifier']
                                                                    .value ==
                                                                10
                                                            ? null
                                                            : () {
                                                                //adiciona + 1 no produto clicado
                                                                listaddcount(
                                                                    index,
                                                                    listreturn()[index]['notifier']
                                                                            .value +
                                                                        1);
                                                                //atualiza o subtotal
                                                                subtotal.value =
                                                                    total();
                                                              },
                                                      ),
                                                    ],
                                                  ),
                                                  IconButton(
                                                      //funcao para deletar um produto
                                                      onPressed: () {
                                                        //deleta o produto clicado
                                                        listadelvoid(index);
                                                        //atualiza a quantidade de produtos do carrinho
                                                        listreturnotifier
                                                                .value =
                                                            listreturn().length;
                                                        //atualiza o subtotal
                                                        subtotal.value =
                                                            total();
                                                        if (listreturnotifier
                                                                .value ==
                                                            0) {
                                                          //se o carrinho estiver vazio e direcionado a home page e atualiza quantidade de produtos
                                                          Navigator.of(context).pop(
                                                              listreturnotifier
                                                                      .value =
                                                                  listreturn()
                                                                      .length);
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
                                                //mostra o valor do notifier multiplicado pelo valor do produto
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
                          index == listreturnotifier.value - 1
                              //se o index for o ultimo entao o subtotal e valor da entrega e adicionado
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
                                                    //subtotal dos produtos
                                                    'Subtotal: R\$ ${total()},00',
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                  Text(
                                                    //valor da entrega
                                                    'Entrega: R\$ $entrega,00',
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                ]);
                                          },
                                        ),
                                      )),
                                )
                              //jeito de usar um widget nulo
                              : const SizedBox(),
                        ],
                      );
                    },
                  );
                } else {
                  //jeito de usar um widget nulo
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
                            //subtotal + entrega
                            subtotal.value == 0
                                ? ''
                                : 'Total: R\$ ${subtotal.value + entrega},00',
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
                  //botao para fazer pedido
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
    );
  }
}
