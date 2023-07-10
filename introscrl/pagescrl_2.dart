import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pageshoetwo extends StatefulWidget {
  const Pageshoetwo({Key? key}) : super(key: key);

  @override
  State<Pageshoetwo> createState() => _PageshoetwoState();
}

class _PageshoetwoState extends State<Pageshoetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: Image.asset('assets/images/Ellipse 906.png'),
              )),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(30),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150),
                child: Image.asset('assets/images/NIKE.png'),
              )),
          Center(
            heightFactor: 2.4,
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: Image.asset('assets/images/nike222.png'),
            ),
          ),
          Center(
            widthFactor: 3,
            heightFactor: 15,
            child: Container(
              alignment: Alignment(1, 0.1),
              margin: const EdgeInsets.only(right: 20),
              child: Image.asset('assets/images/Ellipse 907.png'),
            ),
          ),
          Container(
            alignment: const Alignment(-1, 0.5),
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Follow Latest  \nStyle Shoes',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            alignment: const Alignment(-1, 0.7),
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'There Are Many Beautiful And'
              '\nAttaractive Plants To Your Room',
              style: GoogleFonts.roboto(
                color: const Color(0xFF707B81),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
