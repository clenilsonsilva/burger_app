import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/cartbottonnavbar.dart';
import '../widgets/listcart.dart';

class ShippingPage extends StatelessWidget {
  final String image;
  static const tag = 'shipping_page';
  const ShippingPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    List items = [];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pushNamed('home_page');
            },
          ),
          backgroundColor: Colors.teal),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Order List',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // ListView.builder(
                  //     itemCount: items.length,
                  //     itemBuilder: (context, index) {
                  //       return Padding(
                  //         padding: const EdgeInsets.symmetric(vertical: 10),
                  //         child: Container(
                  //           width: 380,
                  //           height: 120,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(10),
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Colors.grey.withOpacity(0.5),
                  //                   spreadRadius: 3,
                  //                   blurRadius: 10,
                  //                   offset: const Offset(0, 3),
                  //                 ),
                  //               ]),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Container(
                  //                 alignment: Alignment.center,
                  //                 child: Image.asset(
                  //                   image,
                  //                   height: size.height / 3,
                  //                   width: size.width / 2.5,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 child: Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceAround,
                  //                   children: const [
                  //                     Text(
                  //                       'Bacon Burger',
                  //                       style: TextStyle(
                  //                         fontSize: 20,
                  //                         fontWeight: FontWeight.bold,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       'Taste Our hot Burger',
                  //                       style: TextStyle(
                  //                         fontSize: 14,
                  //                         // fontWeight: FontWeight.bold,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       '15R\$',
                  //                       style: TextStyle(
                  //                           fontSize: 20,
                  //                           fontWeight: FontWeight.bold,
                  //                           color: Colors.teal),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               Padding(
                  //                 padding:
                  //                     const EdgeInsets.symmetric(vertical: 10),
                  //                 child: Container(
                  //                   padding: const EdgeInsets.all(5),
                  //                   decoration: BoxDecoration(
                  //                     color: Colors.teal,
                  //                     borderRadius: BorderRadius.circular(10),
                  //                   ),
                  //                   child: Column(
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.spaceBetween,
                  //                     children: const [
                  //                       Icon(
                  //                         CupertinoIcons.minus,
                  //                         color: Colors.white,
                  //                       ),
                  //                       Text(
                  //                         '1',
                  //                         style: TextStyle(
                  //                             fontSize: 18,
                  //                             fontWeight: FontWeight.bold,
                  //                             color: Colors.white),
                  //                       ),
                  //                       Icon(
                  //                         CupertinoIcons.plus,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  Container(
                    height: size.height / 10,
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
                            style: TextStyle(
                                fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Entrega: R\$ 8,00',
                            style: TextStyle(
                                fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}


// List listacartt(){
//   final String image, nome, descricao, valor;
//   List lista = ['','','',''];
//   for (var element in lista) {
    
//   }


// }