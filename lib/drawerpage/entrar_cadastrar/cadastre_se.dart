import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../class/listcard.dart';

class Cadastrese extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final obscureText = ValueNotifier<bool>(true);
  Cadastrese({super.key});

  @override
  Widget build(BuildContext context) {
    bool term = true;
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
          'Cadastro',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: false,
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        // reverse: true,
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
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
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintText: 'Nome',
                                hintStyle: TextStyle(fontSize: 18, height: 0.1),
                              ),
                              cursorColor: Colors.teal,
                              controller: nome,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(fontSize: 18),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value) ||
                                    value.length < 3) {
                                  return 'Nome invalido';
                                } else {
                                  return null;
                                }
                              },
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
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value) ||
                                    value.length < 3) {
                                  return 'SobreNome invalido';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
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
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 18),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                DataInputFormatter(),
                              ],
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !data(value) ||
                                    GetUtils.isDateTime(value)) {
                                  return 'Data de Nascimento Invalida';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
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
                                      borderSide:
                                          BorderSide(color: Colors.teal)),
                                  enabledBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: 'Celular',
                                  hintStyle: const TextStyle(
                                      fontSize: 18, height: 0.1),
                                  suffixIcon: term == true
                                      ? const SizedBox()
                                      : const Icon(
                                          Icons.edit,
                                          color: Colors.teal,
                                        )),
                              controller: celular,
                              keyboardType: TextInputType.phone,
                              style: const TextStyle(fontSize: 18),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                TelefoneInputFormatter(),
                              ],
                              validator: (value) {
                                if (value!.isEmpty ||
                                    value.length != 15 ||
                                    !GetUtils.isPhoneNumber(value)) {
                                  return 'Numero Invalido';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
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
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !GetUtils.isEmail(value)) {
                                    return 'Email invalido';
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
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
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintText: 'Cpf',
                                hintStyle: TextStyle(fontSize: 18, height: 0.1),
                              ),
                              controller: cpf,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 18),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                CpfInputFormatter(),
                              ],
                              validator: (value) {
                                if (value!.isEmpty || !GetUtils.isCpf(value)) {
                                  return 'Cpf invalido';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
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
                                        borderSide:
                                            BorderSide(color: Colors.teal)),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'Nova senha',
                                    hintStyle: const TextStyle(
                                        fontSize: 18, height: 0.1),
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
                                  validator: (value) {
                                    if (value!.isEmpty || value.length < 5) {
                                      return 'senha invalido';
                                    } else {
                                      return null;
                                    }
                                  },
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
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                            // print(listCadastroReturn()[0]['cpf']);
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
                                            // print(listCadastroReturn()[0]['cpf']);
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                    ValueListenableBuilder(
                      valueListenable: ativar,
                      builder: (context, value, child) {
                        return GestureDetector(
                          onTap: value == false
                              ? null
                              : () {
                                  formKey.currentState!.validate();
                                  if (formKey.currentState!.validate()) {
                                    if (listCadastroReturn().isEmpty) {
                                      listAddCadastroVoid(
                                          nome.value.text,
                                          sobrenome.value.text,
                                          nascimento.value.text,
                                          celular.value.text,
                                          email.value.text,
                                          cpf.value.text,
                                          novasenha.value.text);
                                          Navigator.pop(context);
                                    } else {
                                      for (var i = 0;
                                          i < listEmailReturn().length;
                                          i++) {
                                        if (!listEmailReturn()
                                            .contains(email.value.text)) {
                                          listAddCadastroVoid(
                                              nome.value.text,
                                              sobrenome.value.text,
                                              nascimento.value.text,
                                              celular.value.text,
                                              email.value.text,
                                              cpf.value.text,
                                              novasenha.value.text);
                                              Navigator.pop(context); 
                                        }
                                      }
                                    }
                                  }
                                  // for (var i = 0; i < listEmailReturn().length; i++) {
                                  //   print(listCadastroReturn().length);
                                  // }
                                },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            height: 40,
                            width: size.width / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    value == false ? Colors.grey : Colors.teal),
                            child: const Center(
                              child: Text(
                                'CONFIRMAR',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
