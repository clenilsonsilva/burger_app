import 'package:flutter/material.dart';
import 'package:flutter_cep/drawerpage/my_account/localizacao.dart';

class Enderecos extends StatelessWidget {
  const Enderecos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: TextButton.icon(
                onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Localizacao()),
                      );},
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.teal,
                ),
                label: const Text(
                  'Adicionar Endereco',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
