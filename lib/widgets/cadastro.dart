import 'package:flutter/material.dart';

class CadastroBody extends StatelessWidget {
  //widget da drawerpage cadastro pagamento enderecos
  final double width, height;
  final bool term;
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final nascimento = TextEditingController();
  final celular = TextEditingController();
  final email = TextEditingController();
  final cpf = TextEditingController();
  final novasenha = TextEditingController();
  final box = ValueNotifier<bool>(false);
  final obscureText = ValueNotifier<bool>(true);
  CadastroBody(
      {super.key,
      required this.height,
      required this.width,
      required this.term,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
                        borderSide: BorderSide(color: Colors.teal)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Nome',
                    hintStyle: TextStyle(fontSize: 18, height: 0.1),
                  ),
                  cursorColor: Colors.teal,
                  controller: nome,
                  // keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 18),
                  // validator: (value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                  //     return 'Nome invalido';
                  //   } else {
                  //     return null;
                  //   }
                  // },
                ),
              ),
              SizedBox(
                height: 40,
                width: size.width / 2.5,
                child: TextFormField(
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'SobreNome',
                      hintStyle: TextStyle(fontSize: 18, height: 0.1)),
                  controller: sobrenome,
                  // keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 18),
                  // validator: (value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                  //     return 'SobreNome invalido';
                  //   } else {
                  //     return null;
                  //   }
                  // },
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
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Data de Nascimento',
                      hintStyle: TextStyle(fontSize: 18, height: 0.1)),
                  controller: nascimento,
                  // keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 18),
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.digitsOnly,
                  //   DataInputFormatter(),
                  // ],
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
                  decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Celular',
                      hintStyle: const TextStyle(fontSize: 18, height: 0.1),
                      suffixIcon: term == true
                          ? const SizedBox()
                          : const Icon(
                              Icons.edit,
                              color: Colors.teal,
                            )),
                  controller: celular,
                  // keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: 18),
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.digitsOnly,
                  //   TelefoneInputFormatter(),
                  // ],
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
                        borderSide: BorderSide(color: Colors.teal)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 18, height: 0.1),
                  ),
                  controller: email,
                  // keyboardType: TextInputType.emailAddress,
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
                        borderSide: BorderSide(color: Colors.teal)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Cpf',
                    hintStyle: TextStyle(fontSize: 18, height: 0.1),
                  ),
                  controller: cpf,
                  // keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 18),
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.digitsOnly,
                  //   CpfInputFormatter(),
                  // ],
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
                child: ValueListenableBuilder(
                  valueListenable: obscureText,
                  builder: (context, value, child) {
                    return TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Nova senha',
                        hintStyle:
                            const TextStyle(fontSize: 18, height: 0.1),
                        suffixIcon: value == true
                            ? GestureDetector(
                                child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.teal,
                                ),
                                onTap: () {
                                  obscureText.value = false;
                                },
                              )
                            : GestureDetector(
                                child: const Icon(
                                  Icons.visibility,
                                  color: Colors.teal,
                                ),
                                onTap: () {
                                  obscureText.value = true;
                                },
                              ),
                      ),
                      controller: novasenha,
                      // keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize: 18),
                      obscureText: obscureText.value,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        term == true
            ? SizedBox(
                width: size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: box,
                      builder: (context, value, child) {
                        if (value == true) {
                          return GestureDetector(
                            child: const Icon(
                              Icons.check_box,
                              color: Colors.teal,
                            ),
                            onTap: () {
                              box.value = false;
                            },
                          );
                        } else {
                          return GestureDetector(
                            child: const Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.teal,
                            ),
                            onTap: () {
                              box.value = true;
                            },
                          );
                        }
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        'li e aceito os termos de uso e privacidade\n do aplicativo',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            : const SizedBox(),
        GestureDetector(
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
          // onTap: () {},
        )
      ],
    );
  }
}
