import 'package:clone/MyCart.dart';
import 'package:clone/home_and_details/home.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mycart()));
                    },
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
                padding: const EdgeInsets.only(left: 48.0),
                child: Text(
                  'Checkout',
                  style: GoogleFonts.catamaran(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 10),
            child: Stack(children: [
              Container(
                width: 365,
                height: 470,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text(
                  'Contact Information',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.black),
                ),
              ),

              //  List  Tile  1 )..............

              Padding(
                padding: const EdgeInsets.only(top: 50, left: 5),
                child: ListTile(
                  trailing: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        'assets/images/edit.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  title: Text(
                    'rumenhussen@gmail.com',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Email',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Image.asset(
                    'assets/images/Group 161 (1).png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),

              // List  tile  2) ...............

              Padding(
                padding: const EdgeInsets.only(top: 115, left: 5),
                child: ListTile(
                  trailing: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        'assets/images/edit.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  title: Text(
                    '+88-692 -764-269',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Phone',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Image.asset(
                    'assets/images/call.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 170),
                child: ListTile(
                  title: Text(
                    'Address',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'Newahall St 36, London, 12908 - UK',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF707B81),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 130.0, left: 18),
                child: Image.asset(
                  'assets/images/maap.png',
                  width: 330,
                  height: 330,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 360, left: 20),
                child: Text(
                  'Payment Method',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.black),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 125.0),
                child: Align(
                  alignment: Alignment(1, 0),
                  child: ListTile(
                    leading: Image.asset('assets/images/paypal.png'),
                    title: Text(
                      'PayPal Card',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      '**** **** 0696 4629',
                      style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF707B81)),
                  ),
                ),
              )
            ]),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Stack(children: [
              Container(
                width: 400,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 160, left: 20),
                          child: Text(
                            'Subtotal',
                            style: GoogleFonts.quicksand(
                                color: Color(0xFF707B81),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 150.0, bottom: 160),
                          child: Text(
                            '\$1250.00',
                            style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 21),
                  child: Text(
                    'Shopping',
                    style: GoogleFonts.quicksand(
                        color: Color(0xFF707B81),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, right: 30),
                  child: Text(
                    '\$40.90',
                    style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: DottedLine(
                  dashLength: 5,
                  dashGapLength: 10,
                  lineThickness: 3,
                  dashRadius: 106,
                  dashColor: Color(0xFFD1D1D1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 130.0, left: 20),
                    child: Text(
                      'Total Cost',
                      style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140.0, right: 35),
                    child: Text(
                      '\$1690.99',
                      style: GoogleFonts.workSans(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 170, left: 23),
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (alrtdialog) => Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.white,
                          child: Container(
                            width: 390,
                            height: 380,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Image.asset(
                                    'assets/images/congrats.png',
                                    fit: BoxFit.cover,
                                    width: 130,
                                    height: 130,
                                  ),
                                ),
                                Text(
                                  'Your Payment Is \n      '
                                  'Successful',
                                  style: GoogleFonts.quicksand(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Home()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF5B9EE1),
                                      minimumSize: Size(200, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'Back To Shopping',
                                      style: GoogleFonts.quicksand(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: Size(340, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        backgroundColor: Color(0xFF5B9EE1)),
                    child: Text(
                      'Payment',
                      style: GoogleFonts.quicksand(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    )),
              )
            ]),
          )
        ],
      )),
    );
  }
}
