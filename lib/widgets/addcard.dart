import 'package:flutter/material.dart';

class Addcard extends StatelessWidget {
  //drawer informacoes do usuario
  final nomeCartao = TextEditingController();
  final validade = TextEditingController();
  Addcard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Novo cartao',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
          centerTitle: false,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: size.width/1.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'nome do titular do cartao',
                        hintStyle: TextStyle(fontSize: 18, height: 0.1),
                      ),
                      cursorColor: Colors.teal,
                      controller: nomeCartao,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: size.width/4,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Valido ate',
                        hintStyle: TextStyle(fontSize: 18, height: 0.1),
                      ),
                      cursorColor: Colors.teal,
                      controller: validade,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
