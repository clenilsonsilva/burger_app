import 'package:flutter/material.dart';
import '../widgets/cartbottonnavbar.dart';
import '../widgets/listcart.dart';

class ShippingPage extends StatefulWidget {
  static const tag = 'shipping_page';
  const ShippingPage({super.key});

  @override
  ShippingPageState createState() => ShippingPageState();
}

class ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded,
            color: Colors.black,),
            onPressed: () {
              Navigator.of(context).pushNamed('home_page');
            },
          ),
          backgroundColor: Colors.teal
      ),
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
                  const ListCard(
                    image: 'images/bacon-j.png',
                    nome: 'Bacon Burger',
                    descricao: 'Taste Our Bacon Burger',
                    valor: 'R\$15',
                    altura: 100,
                    largura: 150,
                  ),
                  const ListCard(
                    image: 'images/burguer_c.png',
                    nome: 'Chicken Burger',
                    descricao: 'Taste Our Chicken Burger',
                    valor: 'R\$15',
                    altura: 70,
                    largura: 150,
                  ),
                  Container(
                    height: 50,
                    width: 380,
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
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
