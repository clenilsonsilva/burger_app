import 'package:flutter/material.dart';
import 'package:flutter_cep/class/notifier.dart';

import '../class/listcard.dart';

class Addcard extends StatelessWidget {
  //drawer informacoes do usuario
  final activar = Activator(listc: [nomeCartao, validade, numeroCartao, cvv, cpfCartao]);
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
                  width: size.width / 1.8,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'nome do titular do cartao',
                      hintStyle: TextStyle(fontSize: 18, height: 0.2),
                    ),
                    cursorColor: Colors.teal,
                    controller: nomeCartao,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: size.width / 4,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Valido ate',
                      hintStyle: TextStyle(fontSize: 18, height: 0.2),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                  width: size.width / 1.6,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'numero do cartao',
                      hintStyle: TextStyle(fontSize: 18, height: 0.2),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.credit_card,
                          color: Colors.teal,
                          size: 30,
                        ),
                      ),
                    ),
                    cursorColor: Colors.teal,
                    controller: numeroCartao,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: size.width / 5,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'cvv',
                      hintStyle: TextStyle(fontSize: 18, height: 0.2),
                    ),
                    cursorColor: Colors.teal,
                    controller: cvv,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: SizedBox(
              height: 30,
              width: size.width,
              child: TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'cpf do titular do cartao',
                  hintStyle: TextStyle(fontSize: 18, height: 0.2),
                ),
                cursorColor: Colors.teal,
                controller: cpfCartao,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: activar,
            builder: (context, value, child) {
              return GestureDetector(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: value == false
                          ? const Color.fromARGB(255, 124, 124, 124)
                          : Colors.teal,
                    ),
                    child: const Center(
                      child: Text(
                        'ADD CARTAO',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // onTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
