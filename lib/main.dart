import 'package:benda/presentation/screen/pregnant/home_layout.dart';
import 'package:benda/presentation/screen/pregnant/register.dart';
import 'package:benda/presentation/screen/pregnant/search_genyco.dart';
import 'package:benda/presentation/screen/pregnant/verify_device.dart';

import 'package:flutter/material.dart';
import "package:benda/utils.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benda',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.black,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
        child: const HomeLayout(),
      ),
    );
  }
}
