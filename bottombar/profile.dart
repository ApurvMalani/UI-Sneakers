import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(

            children: <Widget>[

              Center(
                heightFactor: 1.6,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    ElevatedButton(
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

                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Text('Profile',style: GoogleFonts.roboto(

                         fontWeight: FontWeight.w500,
                         fontSize: 20,
                         color: Colors.black

                       ),),
                     ),

                    TextButton(onPressed: (){},
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset('assets/images/Icon.png',
                          width: 28,
                           height: 28,
                        )
                    )

                  ],
                ),
              ),

              Column(
                children: [
                  Container(
                    width: 101,
                    height: 101,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),

                    color: Colors.blue.shade50),
                    child: Image.asset('assets/images/alisonbacker.png',width: 100,
                    height: 100,
                    ),
                  ),
                  Center(
                      heightFactor: 0.2,
                      child: Image.asset('assets/images/camera.png',width: 70,height: 70,)),

                  Text('Alisson Becker',style: GoogleFonts.roboto(

                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500

                  ),)
                ],
              ),


              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Center(
                      heightFactor: 4.5,
                      child: Text('Full Name',style: GoogleFonts.quicksand(

                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.black

                      ),),
                    ),
                  ),
                ],
              ),

              Center(
                heightFactor: 0.2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                            BorderRadius.all(Radius.circular(40)))),
                  ),
                ),
              ),



              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Center(
                      heightFactor: 4.5,
                      child: Text('Email Address',style: GoogleFonts.quicksand(

                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.black

                      ),),
                    ),
                  ),
                ],
              ),

              Center(
                heightFactor: 0.2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                            BorderRadius.all(Radius.circular(40)))),
                  ),
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Center(
                      heightFactor: 4.5,
                      child: Text('Password',style: GoogleFonts.quicksand(

                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.black

                      ),),
                    ),
                  ),
                ],
              ),


              Center(
                heightFactor: 0.2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                            BorderRadius.all(Radius.circular(40)))),
                  ),
                ),
              ),




            ],

          ),
        ),

        backgroundColor: const Color(0xFFEDF2F3),


      ),
      // Widget's UI code goes here
    );
  }
}
