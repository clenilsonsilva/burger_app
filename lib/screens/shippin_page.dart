import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/counter.dart';
import '../widgets/cartbottonnavbar.dart';

class ShippingPage extends StatelessWidget {
  final List items;
  final ValueNotifier<int> valuen;
  const ShippingPage({super.key, required this.items, required this.valuen});

  @override
  Widget build(BuildContext context) {
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
          // // Column(
          // //   crossAxisAlignment: CrossAxisAlignment.start,
          // //   children: const [
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
            height: size.height / 1.3,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            valueListenable: valuen,
                            builder: (context, value, child) => Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            CupertinoIcons.minus_circle,
                                            color: valuen.value == 1
                                                ? Colors.teal.withOpacity(0.3)
                                                : Colors.teal,
                                            size: size.width / 15,
                                          ),
                                          onPressed: valuen.value == 1
                                              ? null
                                              : () {
                                                  valuen.value = counterminus(
                                                      valuen.value);
                                                },
                                        ),
                                        Text(
                                          '${valuen.value}',
                                          style: TextStyle(
                                            fontSize: size.width / 17,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            CupertinoIcons.plus_circle,
                                            color: valuen.value == 10
                                                ? Colors.teal.withOpacity(0.3)
                                                : Colors.teal,
                                            size: size.width / 15,
                                          ),
                                          onPressed: valuen.value == 10
                                              ? null
                                              : () {
                                                  // print();
                                                  valuen.value =
                                                      counterplus(valuen.value);
                                                },
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete_outline,
                                          color: Colors.teal,
                                          size: size.width / 15,
                                        )),
                                  ],
                                ),
                                Text(
                                  '${valuen.value * items[index]['valor']}\$',
                                  style: TextStyle(
                                      fontSize: size.width / 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height / 12,
              width: size.width,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Subtotal: R\$ 30,00',
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'Entrega: R\$ 8,00',
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(valuen: valuen),
      extendBodyBehindAppBar: true,
      extendBody: true,
    );
  }
}

// List listacartt(){
//   final String image, nome, descricao, valor;
//   List lista = ['','','',''];
//   for (var element in lista) {
    
//   }


// }