import 'package:flutter/material.dart';

class OndeVoceTa extends StatelessWidget {
  String cidade, logradouro, uf, bairro;
  final formKey = GlobalKey<FormState>();
  OndeVoceTa(
      {super.key,
      required this.cidade,
      required this.logradouro,
      required this.uf,
      required this.bairro});

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
          child: Column(
            children: [
              Column(
                children: [
                  Text('$cidade, $uf, $bairro, $logradouro', style: const TextStyle(fontSize: 25, color: Colors.black)),
                ],
              )
            ],
          ),
        ));
  }
}
