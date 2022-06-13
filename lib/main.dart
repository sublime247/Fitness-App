import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/pages/signup.dart';
import 'pages/signup.dart';
import 'pages/summary.dart';
import 'pages/record.dart';
import 'pages/allpages.dart';


void main() {
  runApp( MaterialApp(
    initialRoute: '/p1',
    routes: {
      '/p1':(context) => const SIGNUPPage(),
      '/p2':(context) =>const ALLPAGE(),
      '/p3':(context)=> const RECORDPAGE(),
      '/p4':(context) => const SUMMARYPAGE()


    },


  ));
}

