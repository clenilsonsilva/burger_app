import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/cadastre_se.dart';

class Login extends StatelessWidget {
  final obscureText = ValueNotifier<bool>(true);
  Login({super.key});

  createAlertDialog(BuildContext context) {
    final emailRecovery = TextEditingController();
    return showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Qual e o seu email?                                ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Vamos te mandar um e-mail pra voce redefinir a senha',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: SizedBox(
                  height: 20,
                  width: 300,
                  child: TextFormField(
                    controller: emailRecovery,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.teal,
                    decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'email',
                              hintStyle: TextStyle(fontSize: 18, height: 0.1)),
                          style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        child: const Text(
                          'CANCELAR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    GestureDetector(
                      child: const Text('OK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      size: 40,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      height: 25,
                      width: size.width / 1.3,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'email',
                          hintStyle: TextStyle(fontSize: 18, height: 0.2),
                        ),
                        cursorColor: Colors.teal,
                        // controller: nomeCartao,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.lock_outline,
                      size: 40,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      height: 25,
                      width: size.width / 1.3,
                      child: ValueListenableBuilder(
                        valueListenable: obscureText,
                        builder: (context, value, child) {
                          return TextFormField(
                            decoration: InputDecoration(
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal)),
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintText: 'senha',
                                hintStyle:
                                    const TextStyle(fontSize: 18, height: 0.2),
                                suffixIcon: value == false
                                    ? GestureDetector(
                                      child: const Icon(
                                          Icons.visibility,
                                          size: 25,
                                          color: Colors.teal,
                                        ),
                                        onTap: () {
                                          obscureText.value = true;
                                        },
                                    )
                                    : GestureDetector(
                                      child: const Icon(
                                          Icons.visibility_off,
                                          size: 25,
                                          color: Colors.teal,
                                        ),
                                        onTap: () {
                                          obscureText.value = false;
                                        },
                                    )),
                            cursorColor: Colors.teal,
                            // controller: nomeCartao,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(fontSize: 18),
                            obscureText: obscureText.value,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 80, right: 80),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 124, 124, 124),
                    ),
                    child: const Center(
                      child: Text(
                        'ENTRAR',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // onTap: () {},
              ),
              GestureDetector(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 6, 122, 9)),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'CADASTRE-SE',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Cadastrese()),
                      );
                },
              ),
              GestureDetector(
                child: const Text(
                  'Esqueci a senha!',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  createAlertDialog(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
