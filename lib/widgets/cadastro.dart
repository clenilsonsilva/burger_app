import 'package:flutter/material.dart';

class CadastroBody extends StatelessWidget {
  //widget da drawerpage cadastro pagamento enderecos
  final double width, height;
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final nascimento = TextEditingController();
  final celular = TextEditingController();
  final email = TextEditingController();
  final cpf = TextEditingController();
  final novasenha = TextEditingController();
  CadastroBody({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.person,
                size: 40,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: TextFormField(
                  controller: nome,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: TextFormField(
                  controller: sobrenome,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.baby_changing_station,
                size: 50,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
                width: width / 1.2,
                child: TextFormField(
                  controller: nascimento,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.phone,
                size: 50,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
                width: width / 1.2,
                child: TextFormField(
                  controller: celular,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.email,
                size: 50,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
                width: width / 1.2,
                child: TextFormField(
                  controller: email,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.credit_card,
                size: 50,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
                width: width / 1.2,
                child: TextFormField(
                  controller: cpf,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.lock,
                size: 50,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
                width: width / 1.2,
                child: TextFormField(
                  controller: novasenha,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: TextButton(
              onPressed: () {},
              child: Text('OK'),
            ),
          )
        ],
      ),
    );
  }
}
