// @dart=2.12
// ignore_for_file: import_of_legacy_library_into_null_safe


import 'package:coffe_machien/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Bloc/home_block.dart';
import 'Bloc/home_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => HomeCubit()),
        ],
        child: BlocConsumer<HomeCubit, CaseState>(
            listener: (context, state) {},
            builder: (context, state) {
              return     MaterialApp(
                  builder: (context, child) => ResponsiveBreakpoints.builder(
                    child: child!,
                    breakpoints: [
                      const Breakpoint(start: 0, end: 450, name: MOBILE),
                      const Breakpoint(start: 451, end: 800, name: TABLET),
                      const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                      const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
                    ],
                  ),
                  debugShowCheckedModeBanner: false, home: const HomeScreen());
            }));
  }
}
