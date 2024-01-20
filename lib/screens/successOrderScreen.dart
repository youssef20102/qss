// // @dart=2.12
//
// // ignore_for_file: non_constant_identifier_names
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:tectleep/Bloc/home_block.dart';
// import 'package:tectleep/Bloc/home_state.dart';
// import 'package:tectleep/components/componant.dart';
// import 'package:tectleep/screens/home_screen.dart';
//
// class SuccessOrderScreen extends StatelessWidget {
//   String drink;
//
//   SuccessOrderScreen({Key? key, required this.drink}) : super(key: key);
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
//             body: Stack(
//               alignment: Alignment.center,
//               children: [
//                 const IgnorePointer(
//                     ignoring: true,
//                     child: HomeScreen()),
//                 Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   color: Colors.black.withOpacity(0.7),
//                   // Adjust the opacity as needed
//                   child: const SizedBox(),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: width / 22, vertical: height / 22),
//                   child: SizedBox(
//                     width: width / 3,
//                     child: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               const Image(image: AssetImage('images/info2.png')),
//                               SizedBox(
//                                 width: width / 44,
//                               ),
//                               Expanded(
//                                 child: Text(
//                                   'Order Confirmed!',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: width / 44,
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: height / 44,
//                           ),
//                           Center(
//                             child: Text(
//                               'Please select whether you want to Order go back to change what you have chosen from the Menu',
//                               style: TextStyle(
//                                 color:
//                                 Colors.white.withOpacity(0.11999999731779099),
//                                 fontSize: width / 50,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: height / 22,
//                           ),
//                           Center(
//                             child: Text(
//                               'Your Order is $drink',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: width / 60,
//                                 fontFamily: 'Roboto Slab',
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: height / 22,
//                           ),
//                           Center(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   width: width / 8,
//                                   child: MaterialButton(
//                                     onPressed: () async {
//                                       cubit.closeConnection();
//                                       navigateWithoutBack(context, const HomeScreen());
//                                     },
//                                     color: HexColor('#141926'),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         const Expanded(
//                                             child: Icon(
//                                               Icons.arrow_forward_ios,
//                                               color: Colors.white,
//                                             )),
//                                         Expanded(
//                                           child: Text(
//                                             'Ok',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: width / 60,
//                                               fontFamily: 'Roboto',
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ));
//       },
//     );
//   }
// }
// @dart=2.12

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';


import 'package:coffe_machien/Bloc/home_state.dart';
import 'package:coffe_machien/components/componant.dart';
import 'package:coffe_machien/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';


import '../Bloc/home_block.dart';

class SuccessOrderScreen extends StatelessWidget {


  SuccessOrderScreen({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, CaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;

        return Scaffold(
            body: Stack(
              alignment: Alignment.center,
              children: [
                const IgnorePointer(
                    ignoring: true,
                    child: HomeScreen()),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.7),
                  // Adjust the opacity as needed
                  child: const SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 22, vertical: height / 22),
                  child: Center(
                    child: Container(
                      color: HexColor('#1C2235'),
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 22, vertical: height / 44),
                        child: SizedBox(
                          width: width / 3,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Image(image: AssetImage('images/info2.png')),
                                    SizedBox(
                                      width: width / 44,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        'Order Confirmed!',
                                        style: TextStyle(
                                          color: Colors.white,

                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height / 44,
                                ),
                                Center(
                                  child: Text(
                                    'Please select whether you want to Order go back to change what you have chosen from the Menu',
                                    style: TextStyle(
                                      color:
                                      Colors.white.withOpacity(0.11999999731779099),

                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height / 22,
                                ),
                                Center(
                                  child: Text(
                                    'Your Order is ${cubit.drink2??''}',
                                    style: const TextStyle(
                                      color: Colors.white,

                                      fontFamily: 'Roboto Slab',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height / 22,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: width / 4),
                                  child: Center(
                                    child: MaterialButton(
                                      onPressed: () async {
                                        // cubit.closeConnection();
                                        navigateWithoutBack(context, const HomeScreen());
                                      },
                                      color: HexColor('#141926'),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                              )),
                                          Expanded(
                                            child: Text(
                                              'Ok',
                                              style: TextStyle(
                                                color: Colors.white,

                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
