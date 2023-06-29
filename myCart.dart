import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mycart extends StatelessWidget {
  List imagescart = [
    {'imagcart': 'assets/images/bluecart.png'},
    {'imagcart': 'assets/images/Groupw.png'},
    {'imagcart': 'assets/images/purcart.png'},
  ];

  int index = 0;

  List nameprze = [
    {'name': 'Nike Club Max', 'prize': '\$64.95'},
    {'name': 'Nike Air Max', 'prize': '\$64.95'},
    {'name': 'Nike Air Max', 'Prize': '\$64.95'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFFEDF2F3),
            body: Stack(children: <Widget>[
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
                    padding: const EdgeInsets.only(left: 48.0),
                    child: Text(
                      'My Cart',
                      style: GoogleFonts.catamaran(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 400,
                    height: 120,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              imagescart[index]['imagcart'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Nike Club Max',
                                  maxLines: 1,
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  nameprze[index]['prize'],
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),

                              // - 1 +
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Text(
                                            "－",
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF828A89)),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                        maxLines: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xFF5B9EE1),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/delete.png',
                                          width: 23, height: 23),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                          Align(
                              alignment: AlignmentDirectional.topCenter,
                              child: Expanded(
                                  child: Text(
                                'L',
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ))),
                        ]),
                  )),

              ///  2 ......  Expanded ......

              Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 400,
                    height: 120,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'assets/images/Groupw.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Nike Air Max',
                                  maxLines: 1,
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  nameprze[index]['prize'],
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),

                              // - 1 +
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Text(
                                            "－",
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF828A89)),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                        maxLines: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xFF5B9EE1),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/redde.png',
                                          width: 23, height: 23),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                          Align(
                              alignment: AlignmentDirectional.topEnd,
                              child: Expanded(
                                  child: Text(
                                'XL',
                                style: GoogleFonts.roboto(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ))),
                        ]),
                  )),

              // 3 ........................

              Padding(
                  padding: const EdgeInsets.only(top: 360),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 400,
                    height: 120,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'assets/images/purcart.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Nike Air Max',
                                  maxLines: 1,
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  nameprze[index]['prize'],
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),

                              // - 1 +
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Text(
                                            "－",
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF828A89)),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                        maxLines: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xFF5B9EE1),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/delete.png',
                                          width: 23, height: 23),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                          Align(
                              alignment: AlignmentDirectional.topEnd,
                              child: Expanded(
                                  child: Text(
                                'XXL',
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ))),
                        ]),
                  )),

              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Stack(children: [
                  Container(
                    width: 400,
                    height: 270,
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
                              padding:
                                  const EdgeInsets.only(bottom: 140, left: 20),
                              child: Text(
                                'Subtotal',
                                style: GoogleFonts.quicksand(
                                    color: Color(0xFF707B81),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 150.0, bottom: 140),
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 85.0, left: 21),
                          child: Text(
                            'Shopping',
                            style: GoogleFonts.quicksand(
                                color: Color(0xFF707B81),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90.0, right: 30),
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
                    padding: const EdgeInsets.only(top: 140),
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
                        padding: const EdgeInsets.only(top: 160.0, left: 20),
                        child: Text(
                          'Total Cost',
                          style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160.0, right: 35),
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
                    padding: EdgeInsets.only(top: 200, left: 20),
                    child: ElevatedButton(
                        onPressed: () {



                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            minimumSize: Size(340, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            backgroundColor: Color(0xFF5B9EE1)),
                        child: Text(
                          'Checkout',
                          style: GoogleFonts.quicksand(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                  )
                ]),
              ),
            ])));
  }
}
