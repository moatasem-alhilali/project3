// import 'package:report_excel/core/resources/assets_fonts.dart';
// import 'package:report_excel/core/themes/dark_mode.dart';
// import 'package:flutter/material.dart';

// class About extends StatelessWidget {
//   About({
//     super.key,
//   });
//   List data = [
//     {
//       "name": "محمد صالح ال كبيبة",
//       "id": 439100152,
//     },
//     {
//       "name": "طلال مهدي ال زمانان",
//       "id": 439100046,
//     },
//     {
//       "name": "صالح محمد حمد ال فلكه",
//       "id": 441102327,
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Directionality(
//           textDirection: TextDirection.rtl,
//           child: Column(
//             children: [
//               for (int i = 0; i < data.length; i++)
//                 Container(
//                   margin: const EdgeInsets.symmetric(vertical: 4),
//                   decoration: BoxDecoration(
//                     color: ColorsManager.main,
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(12),
//                     ),
//                   ),
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       backgroundColor: ColorsManager.secondMain,
//                       child: Text(
//                         "${i + 1}",
//                         style: const TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     subtitle: Text(
//                       data[i]['id'].toString(),
//                       style: const TextStyle(
//                         fontFamily: AssetsFonts.InterBlack,
//                         color: Color.fromARGB(255, 96, 94, 94),
//                       ),
//                     ),
//                     title: Text(
//                       data[i]['name'],
//                       style: const TextStyle(
//                         fontFamily: AssetsFonts.InterBlack,
//                         color: Color.fromARGB(255, 96, 94, 94),
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
