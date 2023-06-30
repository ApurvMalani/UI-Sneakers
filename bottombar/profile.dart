import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Stack(

          children: <Widget>[

            Center(

              child: Text('Profile'),

            )


          ],

        ),

      ),
      // Widget's UI code goes here
    );
  }
}
