import 'package:birinchi_dastur/new projeckt/NewApp.dart';


import 'package:flutter/material.dart';

import 'new projeckt/app_styles/app_style.dart';


void main() {
  runApp(const MyfirstApp());
}

class MyfirstApp extends StatelessWidget {
  const MyfirstApp({super.key});

  get primaryColor => primary;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First app',
     theme: ThemeData(
       primaryColor: primaryColor
     ),
      home: const BottomBar()
    );
  }
}
