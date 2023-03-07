import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cep/class/listcard.dart';

class BurgerBottonNavBar extends StatelessWidget {
  //botao de navegacao da pagina de descricao
  final ValueNotifier<int> counter;
  final Map map;
  const BurgerBottonNavBar({
    super.key,
    required this.counter,
    required this.map,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ValueListenableBuilder(
                  builder: (BuildContext context, value, child) {
                    return Text(
                      //multiplica o valor do produto pela quantidade
                      'Total:  R\$ ${counter.value * map['valor']},00',
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    );
                  },
                  valueListenable: counter,
                ),
              ],
            ),
            ElevatedButton.icon(
              //botao add card
              onPressed: () {
                //ao clicar no botao as informacoes sao passadas para uma funcao na classe listcard
                //e o notifier do produto e enviado para essa funcao que vai possibilitar a edicao individual 
                //no carrinho pois cada produto tera seu map. 
                listaaddvoid(map['nome'], map['images'], map['valor'], counter);
                //ao usar o pop o app volta para a pagina anterior porem tambem para o contexto anterior
                //desse modo que uso o pop consigo atualizar esse notifier.
                Navigator.of(context).pop(listreturnotifier.value=listreturn().length);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              icon: const Icon(CupertinoIcons.plus),
              label: const Text('Add Card'),
            ),
          ],
        ),
      ),
    );
  }
}
