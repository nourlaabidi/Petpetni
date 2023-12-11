import 'package:flutter/material.dart';
import 'package:astuces/pages/astuces.dart';
import 'package:astuces/pages/dogs.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:'/Astuces',
    routes: {
      '/Dogs':(context)=>const Dogs(),
      '/Astuces':(context)=>const Astuces(),
    },
   ),
  );
}
