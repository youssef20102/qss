// @dart=2.12

import 'package:flutter/material.dart';




void navigateTo(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

void navigateWithoutBack(context, widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
//
// Widget CustomLoginButton(Function onPressed, context) {
//   return Padding(
//     padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
//     child: MaterialButton(
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(20.0))),
//       elevation: 5.0,
//       height: MediaQuery.of(context).size.height * 0.08,
//       color: ColorsConsts.cartColor,
//       onPressed: onPressed,
//       child: const Text('Login',
//           style: TextStyle(fontSize: 20.0, color: Colors.white)),
//     ),
//   );
// }
