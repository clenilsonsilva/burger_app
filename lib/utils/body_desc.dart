import 'package:flutter/material.dart';

class BodyDesc extends StatefulWidget {
  const BodyDesc({super.key});

  @override
  State<BodyDesc> createState() => _BodyDescState();
}

class _BodyDescState extends State<BodyDesc> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height / 4.5,
                //  color: Colors.green.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Text(
                        'Descricao',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Pao de brioche, Blende de carne 100g, Calabresa, Salsicha, Ovo, Bacon, Presunto, Queijo, Salada, Barbecue, e Molho especial.',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height / 4.5,
                color: Colors.blue.withOpacity(0.4),
              ),
              Container(
                height: size.height / 4.5,
                color: Colors.red.withOpacity(0.4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
