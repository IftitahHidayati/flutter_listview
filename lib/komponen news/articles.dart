// import 'package:flutter/material.dart';

// class Articles extends StatelessWidget {
//   const Articles({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 8),
//       padding: const EdgeInsets.all(1),
//       color: Colors.green,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Image.asset(
//                 'assets/images/ronaldo.jpeg',
//                 fit: BoxFit.contain,
//                 height: 110,
//               ),
//               Expanded(
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 10),
//                   margin:const EdgeInsets.all(1),
//                   color: Colors.white,
//                   height: 110,
//                   width: 210,
//                   alignment: Alignment.centerLeft,
//                   child: const Text(
//                       'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
//                 ),
//               )
//             ],
//           ),
//           Container(
//             padding: const EdgeInsets.all(14),
//             width: double.infinity,
//             color: Colors.white,
//             child: const Text(
//               'Barcelona Feb 13, 2022',
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }