import 'package:flutter/material.dart';
// import 'package:flutter_application_2/models/cart.dart';
import 'package:flutter_application_2/models/cart_model.dart';
// import 'package:flutter_application_2/pages/TutorialPage.dart';
import 'package:flutter_application_2/pages/intro.dart';
// import 'package:flutter_application_2/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              // home: IntroPage(),
              // home: Tutorialpage(),
              home: IntroPage(),
            ));
  }
}
