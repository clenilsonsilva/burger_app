import 'package:flutter/material.dart';
import 'package:flutter_cep/class/listcard.dart';

class Cadastro extends StatelessWidget {
  final double width, height;
  const Cadastro({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 40),
              child: ValueListenableBuilder(
                valueListenable: tabcadastro,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: width / 4,
                          height: height / 20,
                          decoration: BoxDecoration(
                            border: tabcadastro.value==0 ? null : Border.all(),
                            color: tabcadastro.value==0 ? Colors.teal : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              'cadastro',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: tabcadastro.value==0 ? Colors.white : Colors.black,
                                fontSize: width / (4 * 6),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          tabcadastro.value = 0;
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: width / 4,
                          height: height / 20,
                          decoration: BoxDecoration(
                            border: tabcadastro.value==1 ? null : Border.all(),
                            color: tabcadastro.value==1 ? Colors.teal : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              'pagamento',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: tabcadastro.value==1 ? Colors.white : Colors.black,
                                fontSize: width / (4 * 6),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          tabcadastro.value = 1;
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: width / 4,
                          height: height / 20,
                          decoration: BoxDecoration(
                            border: tabcadastro.value==2 ? null : Border.all(),
                            color: tabcadastro.value==2 ? Colors.teal : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              'endereços',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: tabcadastro.value==2 ? Colors.white : Colors.black,
                                fontSize: width / (4 * 6),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          tabcadastro.value = 2;
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
