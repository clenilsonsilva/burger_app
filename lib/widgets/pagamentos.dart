import 'package:flutter/material.dart';
import 'package:flutter_cep/widgets/addcard.dart';

class Pagamento extends StatelessWidget {
  const Pagamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/creditcard.png',
            scale: 2.7,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text('nenhum cartao cadastrado!',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 2, 121, 6))),
          ),
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Text(
                '+ adicionar cartao',
                style: TextStyle(fontSize: 15),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Addcard()),
              );
            },
          )
        ],
      ),
    );
  }
}
