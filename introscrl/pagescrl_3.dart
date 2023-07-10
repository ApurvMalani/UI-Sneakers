import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pageshoethree extends StatefulWidget {
  const Pageshoethree({Key? key}) : super(key: key);

  @override
  State<Pageshoethree> createState() => _PageshoethreeState();
}

class _PageshoethreeState extends State<Pageshoethree> {
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
          Center(
            heightFactor: 2.3,
            child: Image.asset('assets/images/Spring.png'),
          ),
          Container(
            alignment: const Alignment(-1, 0.5),
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Summer Shoes \nNike 2022',
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
              'Amet Minim Lit Nodeseu Saku'
              '\nNandu sit Alique Dolor',
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
