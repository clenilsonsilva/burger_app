import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String imagem;
  const Header({super.key, this.imagem = ''});

  @override
  Widget build(BuildContext context) {
    /* se for passada uma imagem ao chamar esta classe entao essa e o header de descricao do produto
    se nao for passada entao este se torna o header da homepage*/
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height / 3.5,
                    decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(45),
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 2),
                        ]),
                    child: imagem == ''
                        ? Column(children: [Row()])
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: size.height / 4,
                                    width: size.width,
                                    child: Image.asset(imagem),
                                  )
                                ],
                              ),
                            ],
                          ),
                  ),
                  imagem == '' ? const SizedBox(height: 20) : const SizedBox(),
                ],
              ),
              imagem == ''
                  ? const SizedBox()
                  // ? Positioned(
                  //     bottom: 0,
                  //     child: SizedBox(
                  //       height: 50,
                  //       width: size.width,
                  //       child: Card(
                  //         elevation: 3,
                  //         margin: const EdgeInsets.symmetric(horizontal: 50),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         child: TextFormField(
                  //           decoration: const InputDecoration(
                  //             border: InputBorder.none,
                  //             labelText: 'What do you want to eat?',
                  //             suffixIcon: Icon(Icons.search),
                  //             contentPadding: EdgeInsets.only(left: 20),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   )
                  : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}
