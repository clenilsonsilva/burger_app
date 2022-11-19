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
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      width: width / 4,
                      height: height / 20,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'cadastro',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width / (4 * 6),
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
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'pagamento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width / (4 * 6),
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
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'enderecos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width / (4 * 6),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      tabcadastro.value = 2;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
