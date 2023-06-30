import 'package:clone/textfields/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => SigninState();
}

class SigninState extends State<Signin> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    //  double pixelDensity = data.devicePixelRatio;

    double width = data.size.width;
    double height = data.size.height;
    //   EdgeInsets padding = data.padding;

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
                padding: const EdgeInsets.only(top: 128, left: 104),
                child: Text(
                  'Hello Again!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: const Color(0xFF1A2530),
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(top: 168, left: 40),
                  child: Text(
                    'Welcome Back You’ve Been Missed!',
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
                  'Email Address',
                  style: GoogleFonts.roboto(
                    color: const Color(0xFF1A2530),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: width,
                height: height,
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
                padding: const EdgeInsets.only(left: 20, top: 380),
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
                  padding: EdgeInsets.only(top: 410),
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
                padding: const EdgeInsets.only(left: 239, top: 490),
                child: Text(
                  'Recovery Password',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xFF707B81)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Signup(),
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
                    padding: const EdgeInsets.only(top: 630, left: 20),
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
                    padding: const EdgeInsets.only(top: 746, left: 50),
                    child: Row(
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xFF707B81)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up For Free',
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
        //  backgroundColor:  const Color(0xFFFFFAFA),
        );
  }
}
