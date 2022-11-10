import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cep/class/listcard.dart';
import 'package:flutter_cep/screens/shippin_page.dart';

class BurgerBottonNavBar extends StatelessWidget {
  final ValueNotifier<int> counter;
  final Map map;
  const BurgerBottonNavBar({
    super.key,
    required this.counter,
    required this.map,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ValueListenableBuilder(
                  builder: (BuildContext context, value, child) {
                    return Text(
                      'Total:  R\$ ${counter.value * map['valor']},00',
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    );
                  },
                  valueListenable: counter,
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {
                lista(map['nome'], map['images'], map['valor']);
                print(listar());
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShippingPage(items: listar(), valuen: counter,
                                  
                                )),
                      );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              icon: const Icon(CupertinoIcons.plus),
              label: const Text('Add Card'),
            ),
          ],
        ),
      ),
    );
  }
}
