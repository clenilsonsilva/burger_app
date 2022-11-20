import 'package:flutter/material.dart';

import '../class/listcard.dart';

class Categories extends StatelessWidget {
  final List lista = ['Burger', 'Drink', 'Pizza', 'Hot Dog'];
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    int items = 4;
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
                      valueListenable: currentselecteditemhome,
                      builder: (context, value, child) {
                        return GestureDetector(
                        onTap: () {
                          currentselecteditemhome.value = index;
                          // print(currentselecteditem.value = index);
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
                            Icons.fastfood,
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
                      Spacer(),
                      Text(lista[index]),
                      Spacer(),
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
