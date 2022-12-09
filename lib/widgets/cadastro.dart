import 'package:flutter/material.dart';
import 'package:flutter_cep/class/listcard.dart';

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
    Size size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: tabcadastro,
      builder: (context, value, child) {
        if (value == 0) {
          return SliverToBoxAdapter(
              child: SizedBox(
            height: size.height / 1.3,
            child: Stack(
              children: [
                SizedBox(
                  height: size.height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 2.5,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.teal)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: 'Nome',
                                  hintStyle:
                                      TextStyle(fontSize: 18, height: 0.1),
                                ),
                                cursorColor: Colors.teal,
                                controller: nome,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 2.5,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.teal)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'SobreNome',
                                    hintStyle:
                                        TextStyle(fontSize: 18, height: 0.1)),
                                controller: sobrenome,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.baby_changing_station_rounded,
                                size: 30,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 1.2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.teal)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'Data de Nascimento',
                                    hintStyle:
                                        TextStyle(fontSize: 18, height: 0.1)),
                                controller: nascimento,
                                keyboardType: TextInputType.datetime,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 1.2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.teal)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'Celular',
                                    hintStyle:
                                        TextStyle(fontSize: 18, height: 0.1),
                                    suffixIcon: Icon(Icons.edit)),
                                controller: celular,
                                keyboardType: TextInputType.phone,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.email,
                                size: 30,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 1.2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.teal)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: 'Email',
                                  hintStyle:
                                      TextStyle(fontSize: 18, height: 0.1),
                                ),
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.credit_card,
                                size: 30,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 1.2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.teal)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: 'Cpf',
                                  hintStyle:
                                      TextStyle(fontSize: 18, height: 0.1),
                                ),
                                controller: cpf,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.lock,
                                size: 30,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: size.width / 1.2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.teal)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: 'Nova senha',
                                  hintStyle:
                                      TextStyle(fontSize: 18, height: 0.1),
                                  suffixIcon: Icon(
                                    Icons.visibility,
                                    color: Colors.teal,
                                  ),
                                ),
                                controller: novasenha,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: size.width / 4,
                  child: GestureDetector(
                    child: Container(
                      // margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal),
                      child: const Center(
                        child: Text(
                          'CONFIRMAR',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ));
        } else {
          return const SliverToBoxAdapter(child: SizedBox());
        }
      },
    );
  }
}
