import 'package:flutter/material.dart';
import 'package:flutter_cep/my_icons.dart';
import '../class/listcard.dart';

class Categories extends StatelessWidget {
  /* classe que controla as categorias*/
  final List lista = ['Burger', 'Drink', 'Pizza', 'Hot Dog', 'Acai', 'Marmitex'];
  final List listaIcon  = [MyIcons.hamburger ,MyIcons.beer, Icons.local_pizza, MyIcons.foodhotdog, Icons.fastfood, Icons.food_bank];
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    int items = lista.length;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                      right: 20,
                    ),
                    child: ValueListenableBuilder(
                      /* valuenotifier que contem o index da pagina atual*/
                      valueListenable: currentselecteditemhome,
                      builder: (context, value, child) {
                        return GestureDetector(
                        onTap: () {
                          //ao clicar guarda o index atual
                          currentselecteditemhome.value = index;
                        },
                        child: Card(
                          color: index == currentselecteditemhome.value
                              ? Colors.black.withOpacity(0.7)
                              : Colors.white,
                          elevation: 3,
                          margin: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            listaIcon[index],
                            color: index == currentselecteditemhome.value
                                ? Colors.white
                                : Colors.black.withOpacity(0.7),
                          ),
                        ),
                      );
                      },
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 90,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      //nome da categoria atual
                      Text(lista[index]),
                      const Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
