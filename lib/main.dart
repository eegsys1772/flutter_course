import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/baitap.dart';



void main() {
  runApp(MyApp7());
}
//
// class MyApp7 extends StatelessWidget {
//   const MyApp7() : super();
//
//   Widget createColumns(String data, IconData icon, Color color) {
//     double size = 25;
//     return Column(
//       textDirection: TextDirection.ltr,
//       children: [
//         Icon(icon, textDirection: TextDirection.ltr, size: size, color: color),
//         Text(
//           data,
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             color: color,
//             fontSize: size,
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.black,
//       ),
//       padding: EdgeInsets.all(50),
//       child: Center(
//         child: Column(
//           children: [
//             Container(
//                 width: 3000,
//                 height: 400,
//                 padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30))),
//                 child: Column(
//                   children: [
//                     Text("Logo",
//                         textDirection: TextDirection.ltr,
//                         style: TextStyle(color: Colors.white, fontSize: 30)),
//                     Image(
//                       image: NetworkImage(
//                           'https://cdn.pixabay.com/photo/2021/08/25/09/49/woman-6572974__340.jpg'),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 20),
//                       child: Text(
//                         "There is a image above",
//                         textDirection: TextDirection.ltr,
//                         style: TextStyle(color: Colors.cyan, fontSize: 25),
//                       ),
//                     ),
//                   ],
//                 )),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               height: 60,
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   textDirection: TextDirection.ltr,
//                   children: [
//                     createColumns("Call", Icons.call, Colors.greenAccent),
//                     createColumns(
//                         "Router", Icons.router, Colors.deepOrangeAccent),
//                     createColumns(
//                         "Camera", Icons.add_a_photo_rounded, Colors.blue),
//                   ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
