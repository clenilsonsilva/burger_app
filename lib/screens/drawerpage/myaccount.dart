import 'package:flutter/material.dart';
import '../../class/listcard.dart';
import '../../widgets/Cpe.dart';
import '../../widgets/cadastro.dart';
import '../../widgets/enderecos.dart';
import '../../widgets/pagamentos.dart';

class MyAccount extends StatelessWidget {
  //drawer informacoes do usuario
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
      body: Stack(
        children: [
          CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              Cadastro(height: size.height, width: size.width),
              ValueListenableBuilder(
                valueListenable: tabcadastro,
                builder: (context, value, child) {
                  if (tabcadastro.value == 0) {
                    return CadastroBody(height: size.height, width: size.width);
                  }
                  else if(tabcadastro.value==1) {
                    return const Pagamento();
                  }
                  else {
                    return const Enderecos();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
