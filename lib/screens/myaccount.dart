import 'package:flutter/material.dart';
import 'package:flutter_cep/widgets/cadastro.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

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
          'My Informations',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: false,
      ),
      // extendBodyBehindAppBar: true,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          Cadastro(height: size.height, width: size.width),
          
        ],
      ),
    );
  }
}
