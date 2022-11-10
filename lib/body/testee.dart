// Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(
//                 top: 20,
//                 left: 10,
//                 bottom: 10,
//               ),
//               child: Text(
//                 'Order List',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Container(
//               height: size.height / 10,
//               width: size.width,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 3,
//                       blurRadius: 10,
//                       offset: const Offset(0, 3),
//                     ),
//                   ]),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                     Text(
//                       'Subtotal: R\$ 30,00',
//                       style:
//                           TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
//                     ),
//                     Text(
//                       'Entrega: R\$ 8,00',
//                       style:
//                           TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),