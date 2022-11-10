// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../class/counter.dart';

// class Add extends StatelessWidget {
//   final double heigth, width;
//   final ValueNotifier<int> valuen;
//   final String imagem;
//   const Add(
//       {super.key,
//       required this.heigth,
//       required this.width,
//       required this.valuen,
//       required this.imagem});

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
// Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   child: Container(
//                     width: size.width,
//                     height: size.height / 6,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 3,
//                             blurRadius: 10,
//                             offset: const Offset(0, 3),
//                           ),
//                         ]),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         SizedBox(
//                           child: Image.asset(
//                             image,
//                             height: size.height / 3,
//                             width: size.width / 2.5,
//                           ),
//                         ),
//                         SizedBox(
//                           child: ValueListenableBuilder(
//                             valueListenable: valuen,
//                             builder: (context, value, child) => Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Text(
//                                   'Bacon Burger',
//                                   textAlign: TextAlign.justify,
//                                   style: TextStyle(
//                                     fontSize: size.width / 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     IconButton(
//                                       icon: Icon(
//                                         CupertinoIcons.minus_circle,
//                                         color: valuen.value == 1
//                                             ? Colors.teal.withOpacity(0.3)
//                                             : Colors.teal,
//                                         size: size.width / 15,
//                                       ),
//                                       onPressed: valuen.value == 1
//                                           ? null
//                                           : () {
//                                               valuen.value =
//                                                   counterminus(valuen.value);
//                                             },
//                                     ),
//                                     Text(
//                                       '${valuen.value}',
//                                       style: TextStyle(
//                                         fontSize: size.width / 17,
//                                         color: Colors.teal,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     IconButton(
//                                       icon: Icon(
//                                         CupertinoIcons.plus_circle,
//                                         color: valuen.value == 10
//                                             ? Colors.teal.withOpacity(0.3)
//                                             : Colors.teal,
//                                         size: size.width / 15,
//                                       ),
//                                       onPressed: valuen.value == 10
//                                           ? null
//                                           : () {
//                                               valuen.value =
//                                                   counterplus(valuen.value);
//                                             },
//                                     ),
//                                   ],
//                                 ),
//                                 Text(
//                                   '${valuen.value * 15}\$',
//                                   style: TextStyle(
//                                       fontSize: size.width / 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.teal),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );