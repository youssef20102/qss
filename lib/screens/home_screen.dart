// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:tectleep/Bloc/home_block.dart';
// import 'package:tectleep/Bloc/home_state.dart';
// import 'package:tectleep/components/componant.dart';
// import 'package:tectleep/screens/sendOrderScreen.dart';
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<HomeCubit, CaseState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         var cubit = HomeCubit.get(context);
//         var height = MediaQuery.of(context).size.height;
//         var width = MediaQuery.of(context).size.width;
//
//         return Scaffold(
//           appBar: AppBar(
//             backgroundColor: HexColor('#141926'),
//             // title: const Text(
//             //   'Coffee Machine',
//             //   style: TextStyle(color: Colors.white),
//             // ),
//             actions: [
//               IconButton(
//                   onPressed: () {
//                     cubit.startConnection(context);
//                   },
//                   icon: const Icon(
//                     Icons.settings,
//                     color: Colors.white,
//                   ))
//             ],
//           ),
//           backgroundColor: HexColor('#141926'),
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Text(
//                   'Order Your Hot Drink',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width / 20,
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w800 ,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: height / 80,
//               ),
//               Container(
//                   height: height / 2,
//                   width: width / 1.5,
//                   padding: EdgeInsets.symmetric(horizontal: width / 22),
//                   decoration: BoxDecoration(
//                     color: HexColor('#1C2235'),
//                     // Change the color as needed
//                     borderRadius:
//                     BorderRadius.all(Radius.circular(width / 1)),
//                   ),
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Positioned(
//                           top: height / 40,
//                           child: InkWell(
//                             onTap: () {
//                               // cubit.showConfirmOrderPopup(
//                               //     context, width, height, 'American Coffee');
//                               if (cubit.connection != '' &&
//                                   cubit.connection != null) {
//                                 navigateWithoutBack(
//                                     context,
//                                     SendOrderScreen(
//                                       drink: 'American Coffee',
//                                     ));
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(const SnackBar(
//                                   behavior: SnackBarBehavior.floating,
//                                   backgroundColor: Colors.redAccent,
//                                   content: Text('Connect to machine please'),
//                                 ));
//                               }
//                             },
//                             child: myDrink(width, height, 'American Coffee',
//                                 'قهوة أمريكية', 'images/drink1.png'),
//                           )),
//                       Positioned(
//                           right: width / 60,
//                           child: InkWell(
//                             onTap: () {
//                               // cubit.showConfirmOrderPopup(
//                               //     context, width, height, 'Karak Tea');
//                               if (cubit.connection != '' &&
//                                   cubit.connection != null) {
//                                 navigateWithoutBack(
//                                     context,
//                                     SendOrderScreen(
//                                       drink: 'Karak Tea',
//                                     ));
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(const SnackBar(
//                                   behavior: SnackBarBehavior.floating,
//                                   backgroundColor: Colors.redAccent,
//                                   content: Text('Connect to machine please'),
//                                 ));
//                               }
//                             },
//                             child: myDrink(width, height, 'Karak Tea',
//                                 'شاي كرك', 'images/drink3.png'),
//                           )),
//                       Positioned(
//                           left: width / 60,
//                           child: InkWell(
//                             onTap: () {
//                               // cubit.showConfirmOrderPopup(
//                               //     context, width, height, 'Capp. Hazelnut');
//                               if (cubit.connection != '' &&
//                                   cubit.connection != null) {
//                                 navigateWithoutBack(
//                                     context,
//                                     SendOrderScreen(
//                                       drink: 'Capp. Hazelnut',
//                                     ));
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(const SnackBar(
//                                   behavior: SnackBarBehavior.floating,
//                                   backgroundColor: Colors.redAccent,
//                                   content: Text('Connect to machine please'),
//                                 ));
//                               }
//                             },
//                             child: myDrink(width, height, 'Capp. Hazelnut',
//                                 'كابوتشينو بندق', 'images/drink2.png'),
//                           )),
//                       Positioned(
//                           bottom: 0,
//                           child: InkWell(
//                             onTap: () {
//                               // cubit.showConfirmOrderPopup(
//                               //     context, width, height, 'Capp. Fantaze');
//                               if (cubit.connection != '' &&
//                                   cubit.connection != null) {
//                                 navigateWithoutBack(
//                                     context,
//                                     SendOrderScreen(
//                                       drink: 'Capp. Fantaze',
//                                     ));
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(const SnackBar(
//                                   behavior: SnackBarBehavior.floating,
//                                   backgroundColor: Colors.redAccent,
//                                   content: Text('Connect to machine please'),
//                                 ));
//                               }
//                             },
//                             child: myDrink(width, height, 'Capp. Fantaze',
//                                 'كابوتشينو فانتازي', 'images/drink2.png'),
//                           )),
//                       Positioned(
//                           bottom: height / 44,
//                           left: width / 44,
//                           child: InkWell(
//                             onTap: () {
//                               // cubit.showConfirmOrderPopup(
//                               //     context, width, height, 'Essepresso');
//                               if (cubit.connection != '' &&
//                                   cubit.connection != null) {
//                                 navigateWithoutBack(
//                                     context,
//                                     SendOrderScreen(
//                                       drink: 'Essepresso',
//                                     ));
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(const SnackBar(
//                                   behavior: SnackBarBehavior.floating,
//                                   backgroundColor: Colors.redAccent,
//                                   content: Text('Connect to machine please'),
//                                 ));
//                               }
//                             },
//                             child: myDrink(width, height, 'Essepresso',
//                                 'إسبريسو', 'images/drink4.png'),
//                           )),
//                       Positioned(
//                           bottom: height / 44,
//                           right: width / 44,
//                           child: InkWell(
//                             onTap: () {
//                               // cubit.showConfirmOrderPopup(
//                               //     context, width, height, 'Mochacaino');
//                               if (cubit.connection != '' &&
//                                   cubit.connection != null) {
//                                 navigateWithoutBack(
//                                     context,
//                                     SendOrderScreen(
//                                       drink: 'Mochacaino',
//                                     ));
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(const SnackBar(
//                                   behavior: SnackBarBehavior.floating,
//                                   backgroundColor: Colors.redAccent,
//                                   content: Text('Connect to machine please'),
//                                 ));
//                               }
//                             },
//                             child: myDrink(width, height, 'Mochacaino',
//                                 'موكاشينو', 'images/drink5.png'),
//                           )),
//                     ],
//                   )),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget myDrink(width, height, titleEn, titleAr, img) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: width / 10,
//
//           decoration: BoxDecoration(
//             color: HexColor('#141926'),
//             // Change the color as needed
//             borderRadius: BorderRadius.all(Radius.circular(width / 1)),
//           ),
//           child: SizedBox(
//               width: width / 10,
//               child: Image(
//                 image: AssetImage(img),
//                 fit: BoxFit.contain,
//               )),
//         ),
//         Text(
//           titleEn,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: width / 60,
//             fontFamily: 'Sen',
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//         Text(
//           titleAr,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: width / 65,
//             fontFamily: 'Sen',
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ],
//     );
//   }
// }
// @dart=2.12

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';


import 'package:coffe_machien/Bloc/home_block.dart';
import 'package:coffe_machien/screens/sendOrderScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';


import '../Bloc/home_state.dart';
import '../components/componant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, CaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor('#141926'),
            actions: [
              IconButton(
                  onPressed: () {
                    if (cubit.isConnected != true) {
                      cubit.startConnection(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.redAccent,
                        content: Text('already connected! '),
                      ));
                    }
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ))
            ],
          ),
          backgroundColor: HexColor('#141926'),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Order Your Hot Drink',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width / 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: height / 44,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: HexColor('#1C2235'),
                      // Change the color as needed
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      child: InkWell(
                        onTap: () {
                          if (cubit.isConnected == true) {
                            navigateWithoutBack(
                                context,
                                SendOrderScreen(
                                  drink: 'American Coffee',
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.redAccent,
                              content: Text('Connect to machine please'),
                            ));
                          }
                        },
                        child: myDrink(width, height, 'American Coffee',
                            'قهوة أمريكية', 'images/drink1.png'),
                      )),
                  Positioned(
                      right: width * 0.15,
                      height: height * 0.15,
                      child: InkWell(
                        onTap: () {
                          if (cubit.isConnected == true) {
                            navigateWithoutBack(
                                context,
                                SendOrderScreen(
                                  drink: 'Karak Tea',
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.redAccent,
                              content: Text('Connect to machine please'),
                            ));
                          }
                        },
                        child: myDrink(width, height, 'Karak Tea', 'شاي كرك',
                            'images/drink3.png'),
                      )),
                  Positioned(
                      left: width * 0.15,
                      height: height * 0.15,
                      child: InkWell(
                        onTap: () {
                          if (cubit.isConnected == true) {
                            navigateWithoutBack(
                                context,
                                SendOrderScreen(
                                  drink: 'Capp. Hazelnut',
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.redAccent,
                              content: Text('Connect to machine please'),
                            ));
                          }
                        },
                        child: myDrink(width, height, 'Capp. Hazelnut',
                            'كابوتشينو بندق', 'images/drink2.png'),
                      )),
                  Positioned(
                      bottom: 0,
                      child: InkWell(
                        onTap: () {
                          if (cubit.isConnected == true) {
                            navigateWithoutBack(
                                context,
                                SendOrderScreen(
                                  drink: 'Capp. Fantaze',
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.redAccent,
                              content: Text('Connect to machine please'),
                            ));
                          }
                        },
                        child: myDrink(width, height, 'Capp. Fantaze',
                            'كابوتشينو فانتازي', 'images/drink2.png'),
                      )),
                  Positioned(
                      bottom: height * 0.09,
                      left: width / 4,
                      child: InkWell(
                        onTap: () {
                          if (cubit.isConnected == true) {
                            navigateWithoutBack(
                                context,
                                SendOrderScreen(
                                  drink: 'Essepresso',
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.redAccent,
                              content: Text('Connect to machine please'),
                            ));
                          }
                        },
                        child: myDrink(width, height, 'Essepresso', 'إسبريسو',
                            'images/drink4.png'),
                      )),
                  Positioned(
                      bottom: height * 0.09,
                      right: width / 4,
                      child: InkWell(
                        onTap: () {
                          if (cubit.isConnected == true) {
                            navigateWithoutBack(
                                context,
                                SendOrderScreen(
                                  drink: 'Mochacaino',
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.redAccent,
                              content: Text('Connect to machine please'),
                            ));
                          }
                        },
                        child: myDrink(width, height, 'Mochacaino', 'موكاشينو',
                            'images/drink5.png'),
                      )),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget myDrink(width, height, titleEn, titleAr, img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.09,
          // decoration: BoxDecoration(
          //     color: HexColor('#141926'),
          //     // Change the color as needed
          //     shape: BoxShape.circle),
          child: Image(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          titleEn,
          style: TextStyle(
            color: Colors.white,
            fontSize: width / 40,
            fontFamily: 'Sen',
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          titleAr,
          style: TextStyle(
            color: Colors.white,
            fontSize: width / 55,
            fontFamily: 'Sen',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
