import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class botomsheet extends StatefulWidget {
  botomsheet({Key? key}) : super(key: key);

  @override
  State<botomsheet> createState() => _botomsheetState();
}

class _botomsheetState extends State<botomsheet> {
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 7,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10), right: Radius.circular(10)),
                    color: Color(0xffe9edef),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0, top: 20),
                      child: Text(
                        'Filters',
                        style: GoogleFonts.roboto(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0, top: 20),
                      child: Text(
                        'RESET',
                        style: GoogleFonts.openSans(color: Color(0xff707B81)),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      'Gender',
                      style: GoogleFonts.inter(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Center(
                  heightFactor: 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 110,
                          height: 55,
                          child: Center(
                            child: Text(
                              'Men',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff5b9ee1),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(40),
                                  right: Radius.circular(40)))),
                      Container(
                          width: 110,
                          height: 55,
                          child: Center(
                            child: Text(
                              'Women',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff707b81)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffe9edef),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(40),
                                  right: Radius.circular(40)))),
                      Container(
                          width: 110,
                          height: 55,
                          child: Center(
                            child: Text(
                              'Unisex',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff707b81)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffe9edef),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(40),
                                  right: Radius.circular(40)))),
                    ],
                  ),
                ),
                Center(
                  heightFactor: 0.3,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text(
                        'Size',
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Center(
                  heightFactor: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        //margin: EdgeInsets.all(30),
                        width: 90,
                        height: 55,
                        child: Center(
                          child: Text(
                            'UK 4.4',
                            style: GoogleFonts.roboto(
                                color: Color(0xff707b81),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffe9edef),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(40),
                                right: Radius.circular(40))),
                      ),

                      // 2).........................

                      Container(
                        width: 90,
                        height: 50,
                        child: Center(
                          child: Text(
                            'US 5.5',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff5b9ee1),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(40),
                                right: Radius.circular(40))),
                      ),

                      // 3)...........................

                      Container(
                        //margin: EdgeInsets.all(30),
                        width: 90,
                        height: 50,
                        child: Center(
                          child: Text(
                            'UK 6.5',
                            style: GoogleFonts.roboto(
                                color: Color(0xff707b81),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffe9edef),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(40),
                                right: Radius.circular(40))),
                      ),

                      // 4) ..............................

                      Container(
                        //margin: EdgeInsets.all(30),
                        width: 90,
                        height: 50,
                        child: Center(
                          child: Text(
                            'EU 11.5',
                            style: GoogleFonts.roboto(
                                color: Color(0xff707b81),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffe9edef),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(40),
                                right: Radius.circular(40))),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1, left: 20),
                    child: Text(
                      'Price',
                      style: GoogleFonts.inter(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                  Center(
                    heightFactor: 0.2,
                    child: Image.asset('assets/images/Group 241.png',width: 340,
                    height: 350,
                    ),
                  ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);

                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(330, 54),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: const Color(0xFF5B9EE1)),
                  child: Text(
                    'Apply',
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
