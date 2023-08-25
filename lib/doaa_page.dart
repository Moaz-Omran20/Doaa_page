// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DoaaPage extends StatefulWidget {
//   const DoaaPage({Key? key}) : super(key: key);
//
//   @override
//   State<DoaaPage> createState() => _DoaaPageState();
// }
//
// class _DoaaPageState extends State<DoaaPage> {
//   String doaa = '';
//   List<String> allDoaa = [];
//   int firstCount = 4;
//   int secondCount = 5;
//   int thirdCount = 3;
//   int fourthCount = 7;
//
//   @override
//   void initState() {
//     rootBundle.loadString('assets/files/doaa.txt').then((value) {
//       setState(() {
//         doaa = value;
//         allDoaa = doaa.split('،');
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Image.asset(
//           'assets/images/home_bg.png',
//           width: double.infinity,
//           height: double.infinity,
//           fit: BoxFit.fill,
//         ),
//         Scaffold(
//           backgroundColor: Colors.transparent,
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             centerTitle: true,
//             title: Text(
//               'دعاء',
//               style: GoogleFonts.amiri(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 fourthCount == 0 &&
//                         firstCount == 0 &&
//                         secondCount == 0 &&
//                         thirdCount == 0
//                     ? const Center(
//                         child: Text(
//                           "!احسنت , لقد انهيت ادعيه اليوم",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFFB7935F)),
//                         ),
//                       )
//                     : Visibility(
//                         visible: firstCount == 0 ? false : true,
//                         child: Row(
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(18.0),
//                                   child: Expanded(
//                                     child: Container(
//                                       width: MediaQuery.of(context).size.width*.9,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(15),
//                                       ),
//                                       child: Text(
//                                         textAlign: TextAlign.center,
//                                         allDoaa[0],
//                                         style: GoogleFonts.amiri(
//                                             fontSize: 25,
//                                             color: const Color(0xFFB7935F)),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Row(
//                                   children: [
//                                     ElevatedButton(
//                                       onPressed: () {
//                                         firstCount--;
//                                         setState(() {});
//                                       },
//                                       child: const Text("تم"),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor:
//                                             const Color(0xFFB7935F),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       width: 30,
//                                     ),
//                                     Text(
//                                       "$firstCount:التكرارات المتبقيه",
//                                       style: const TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 ),
//                                  Container(
//                                   margin:EdgeInsets.only(right: MediaQuery.of(context).size.width*.1) ,
//                                     width: 300,
//                                     child: Divider(
//                                       thickness: 2,
//                                       color: Color(0xFFB7935F),
//                                     )),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                 Visibility(
//                   visible: secondCount == 0 ? false : true,
//                   child: Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(18.0),
//                             child: Expanded(
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width*.9,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Text(
//                                   textAlign: TextAlign.center,
//                                   allDoaa[1],
//                                   style: GoogleFonts.amiri(
//                                       fontSize: 25,
//                                       color: const Color(0xFFB7935F)),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   secondCount--;
//                                   setState(() {});
//                                 },
//                                 child: const Text("تم"),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFFB7935F),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 30,
//                               ),
//                               Text(
//                                 "$secondCount:التكرارات المتبقيه",
//                                 style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Container(
//                               margin:EdgeInsets.only(right: MediaQuery.of(context).size.width*.1) ,
//                               width: 300,
//                               child: Divider(
//                                 thickness: 2,
//                                 color: Color(0xFFB7935F),
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Visibility(
//                   visible: thirdCount == 0 ? false : true,
//                   child: Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(18.0),
//                             child: Expanded(
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width*.9,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Text(
//                                   textAlign: TextAlign.center,
//                                   allDoaa[2],
//                                   style: GoogleFonts.amiri(
//                                       fontSize: 25,
//                                       color: const Color(0xFFB7935F)),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   thirdCount--;
//                                   setState(() {});
//                                 },
//                                 child: const Text("تم"),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFFB7935F),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 30,
//                               ),
//                               Text(
//                                 "$thirdCount:التكرارات المتبقيه",
//                                 style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Container(
//                               margin:EdgeInsets.only(right: MediaQuery.of(context).size.width*.1) ,
//                               width: 300,
//                               child: Divider(
//                                 thickness: 2,
//                                 color: Color(0xFFB7935F),
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Visibility(
//                   visible: fourthCount == 0 ? false : true,
//                   child: Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(18.0),
//                             child: Expanded(
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width*.9,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Text(
//                                   textAlign: TextAlign.center,
//                                   allDoaa[3],
//                                   style: GoogleFonts.amiri(
//                                       fontSize: 25,
//                                       color: const Color(0xFFB7935F)),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   fourthCount--;
//                                   setState(() {});
//                                 },
//                                 child: const Text("تم"),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFFB7935F),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 30,
//                               ),
//                               Text(
//                                 "$fourthCount:التكرارات المتبقيه",
//                                 style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
