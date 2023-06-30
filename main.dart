import 'package:clone/MyCart.dart';
import 'package:clone/introscrl/pagescrl.dart';
import 'package:clone/prac.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
 MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) =>  Splash(),
        '/2nd': (context) =>  Pageshoe(),
         '/3rd' : (context) => Mycart(),
      },

    );
  }
}
