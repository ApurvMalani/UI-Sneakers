import 'package:clone/textfields/forget_Password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
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
              padding: const EdgeInsets.only(top: 135, left: 70),
              child: Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: const Color(0xFF1A2530),
                    fontWeight: FontWeight.w500,
                    fontSize: 35),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.only(top: 168, left: 60),
                child: Text(
                  'Let’s Create Account Together',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: const Color(0xFF707B81)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 250),
              child: Text(
                'Your Name',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF1A2530),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Padding(
                padding: EdgeInsets.only(top: 274),
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
              padding: const EdgeInsets.only(left: 20, top: 360),
              child: Text(
                'Email Address',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF1A2530),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Padding(
                padding: EdgeInsets.only(top: 390),
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
              padding: const EdgeInsets.only(left: 20, top: 470),
              child: Text(
                'Password',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF1A2530),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Padding(
                padding: EdgeInsets.only(top: 495),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black,
                        ),
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
              padding: const EdgeInsets.only(top: 583, left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Forgetpass(),
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
                  'Sign In',
                  style: GoogleFonts.roboto(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 670, left: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(335, 54),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        backgroundColor: const Color(0xFFFFFFFF)),
                    child: Row(
                      children: [
                      Image.asset('assets/images/gooogle.png',width: 40, height: 40,),

                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            'Sign in with google',
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF1A2530)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 746, left: 73),
                  child: Row(
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF707B81)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF1A2530)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFFEDF2F3),
    );
  }
}
