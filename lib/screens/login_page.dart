import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.email_outlined, size: 40, color: Colors.teal,),
                SizedBox(
                  height: 25,
                  width: size.width/1.3,
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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.lock_outline, size: 40, color: Colors.teal,),
                SizedBox(
                  height: 25,
                  width: size.width/1.3,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'senha',
                      hintStyle: TextStyle(fontSize: 18, height: 0.2),
                      suffixIcon: Icon(Icons.visibility, size: 25, color: Colors.teal,)
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 124, 124, 124),
                ),
                child: const Center(
                  child: Text(
                    'CADASTRE-SE',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            // onTap: () {},
          ),
        ],
      ),
    );
  }
}
