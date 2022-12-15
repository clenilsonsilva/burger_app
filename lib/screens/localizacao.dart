import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cep/class/searchcep.dart';
import 'package:flutter_cep/screens/ondevoceta.dart';

class Localizacao extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final endereco = TextEditingController();
  final resposta = ValueNotifier<String>('');
  final cep = ValueNotifier<bool>(false);
  List lista = [];
  Localizacao({super.key});

  @override
  Widget build(BuildContext context) {
    endereco.addListener(() {
      endereco.value.text.length == 10 ? cep.value = true : cep.value = false;
    });
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
            'Onde voce ta?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
          centerTitle: false,
        ),
        // extendBodyBehindAppBar: true,
        body: Form(
          key: formKey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'digite aqui o endereco de entrega:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                height: 30,
                width: size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'buscar cep',
                      hintStyle: TextStyle(fontSize: 18, height: 0.1),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  controller: endereco,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 18),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CepInputFormatter(),
                  ],
                  validator: (value) {
                    if (value!.isEmpty ||
                        endereco.value.text
                                .replaceAll(RegExp(r'[.-]'), '')
                                .length !=
                            8) {
                      return 'cep invalido';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: cep,
              builder: (context, value, cheld) {
                return GestureDetector(
                    onTap: value == true
                        ? () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                resposta.value = '0';
                                final res = await consultar(endereco.value.text
                                    .replaceAll(RegExp(r'[.-]'), ''));
                                resposta.value = '$res';
                              } catch (e) {
                                resposta.value = 'Erro!';
                              }
                            }
                            if (!resposta.value.contains(
                                    'Nada encontrado, tente outro Cep') ||
                                resposta.value.isNotEmpty || !resposta.value.contains('Erro!')) {
                              // ignore: use_build_context_synchronously
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OndeVoceTa(
                                          uf: Cep.fromJson(resposta.value).uf,
                                          cidade: Cep.fromJson(resposta.value).cidade,
                                          bairro: Cep.fromJson(resposta.value).bairro,
                                          logradouro: Cep.fromJson(resposta.value).logradouro,
                                        )),
                              );
                            }

                          }
                        : null,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value == false ? Colors.grey : Colors.teal),
                      child: const Center(
                        child: Text(
                          'CONFIRMAR',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ));
              },
            ),
          ]),
        ));
  }
}
