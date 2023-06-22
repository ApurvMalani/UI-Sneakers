import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Deetails extends StatelessWidget {
  const Deetails({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        elevation: 0,
                        backgroundColor: const Color(0xFFFFFFFF),
                        minimumSize: const Size(50, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 18,
                      color: Color(0xFF1A2530),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33.0),
                child: Text(
                  'Men\'s Shoes',
                  style: GoogleFonts.catamaran(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        elevation: 0,
                        backgroundColor: const Color(0xFFFFFFFF),
                        minimumSize: const Size(50, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: Icon(
                      MdiIcons.shoppingOutline,
                      size: 18,
                      color: const Color(0xFF1A2530),
                    )),
              ),




            ],


          ),
            Container(

              color: Colors.deepOrange,
              width: 40,
              height: 40,

            )
        ]
        ),
        backgroundColor: const Color(0xFFEDF2F3),
      ),
    );
  }
}
