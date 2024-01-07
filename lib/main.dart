import 'package:flutter/material.dart';
import 'package:petpetni/astuces.dart';
import 'package:petpetni/dogs.dart';
import 'package:petpetni/homevet.dart';
import 'package:petpetni/health.dart';
import 'package:petpetni/nutrition.dart';
import 'package:petpetni/discussions.dart';



void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute:'/Astuces',
    routes: {
      '/Health':(context)=>const Health(),
      '/Dogs':(context)=>const Dogs(),
      '/Astuces':(context)=>const Astuces(),
      '/Nutrition':(context)=>const Nutrition(),
      '/Discussions':(context)=>const Discussions(),
    },
   );
  }
}