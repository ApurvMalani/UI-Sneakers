import 'package:clone/home_and_details/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({Key? key}) : super(key: key);

  @override
  State<Forgetpass> createState() => ForgetpassState();
}

class ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.white,
                      elevation: 0,
                      backgroundColor: const Color(0xFFFFFFFF),
                      minimumSize: const Size(55, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 18,
                    color: Color(0xFF1A2530),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, left: 60),
              child: Text(
                'Recovery Password',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: const Color(0xFF1A2530),
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.only(top: 200, left: 35),
                child: Text(
                  'Please Enter Your Email Address To \n       Recieve a Verification Code',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: const Color(0xFF707B81)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 20),
              child: Text(
                'Email Address',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Padding(
                padding: EdgeInsets.only(top: 370),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480, left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: const Size(335, 54),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: const Color(0xFF5B9EE1)),
                child: Text(
                  'Continue',
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFEDF2F3),
    );
  }
}
