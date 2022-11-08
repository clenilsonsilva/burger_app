import 'package:flutter/material.dart';

class HeaderTeste extends StatelessWidget {
  final String a, imagem;
  final valor = ValueNotifier<String>('');
  HeaderTeste({super.key, required this.a, required this.imagem});

  @override
  Widget build(BuildContext context) {
    valor.value = a;
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height / 3,
                    decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(45),
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 2),
                        ]),
                    child: ValueListenableBuilder(
                      valueListenable: valor,
                      builder: (context, value, child) {
                        if (value == 'home') {
                          return Column(children: [Row()]);
                        } else {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: size.height / 3,
                                    width: size.width,
                                    child: Image.asset(imagem),
                                  )
                                ],
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: valor,
                    builder: (context, value, child) {
                      if (value == 'home') {
                        return const SizedBox(height: 20);
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
              ValueListenableBuilder(
                valueListenable: valor,
                builder: (context, value, child) {
                  if (value == 'home') {
                    return Positioned(
                      bottom: 0,
                      child: SizedBox(
                        height: 50,
                        width: size.width,
                        child: Card(
                          elevation: 3,
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'What do you want to eat?',
                              suffixIcon: Icon(Icons.search),
                              contentPadding: EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox();
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
