import 'package:flutter/material.dart';

class Notifi extends StatefulWidget {
  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Stack(

          children: <Widget>[

            Center(

              child: Text('Notification'),

            )



          ],

        ),

      ),
      // Widget's UI code goes here
    );
  }
}
