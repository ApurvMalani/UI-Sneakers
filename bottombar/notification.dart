import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifi extends StatefulWidget {
  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Notifications',
                      style: GoogleFonts.catamaran(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Clear all',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF5B9EE1)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Today',
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Column(
              children: [

                // 1 )............................
                Container(
                  margin: EdgeInsets.all(10),

                  width: 450,
                  height: 85,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Group 155.png'),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'We Have New Products With Offers',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('\$364.95',style: GoogleFonts.workSans(

                                  fontSize: 19,
                                  fontWeight: FontWeight.w500
                                )),
                                Text('\$265.00',style: GoogleFonts.workSans(
                                     color: Color(0xFF707b81),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )  ),
                              ],
                            ),


                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 20, left: 20),
                            child: Flexible(
                              child: Text(
                                '6 min ago',
                                maxLines: 1,
                                style: GoogleFonts.workSans(
                                    color: Color(0xFF707B81),
                                    fontWeight: FontWeight.w500,
                                     fontSize: 17),

                              ),

                            ),

                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20,left: 80),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Color(0xFF5B9EE1),
                                  borderRadius: BorderRadius.circular(30))),

                        ],
                      ),
                    ],
                  ),
                ),



                // 2) /////////////

                Container(
                  margin: EdgeInsets.all(10),

                  width: 458,
                  height: 83,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/redbox.png'),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('We Have New Product With Offers',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$364.95',style: GoogleFonts.workSans(

                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )),
                                Text('\$265.00',style: GoogleFonts.workSans(
                                    color: Color(0xFF707b81),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )  ),
                              ],
                            ),


                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 20, left: 20),
                            child: Flexible(
                              child: Text(
                                '26 min ago',
                                maxLines: 1,
                                style: GoogleFonts.workSans(
                                    color: Color(0xFF707B81),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),

                              ),

                            ),

                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 20,left: 80),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Color(0xFF5B9EE1),
                                  borderRadius: BorderRadius.circular(30))),

                        ],
                      ),
                    ],
                  ),
                ),



                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 15),
                    child: Text(
                      'Yesterday',
                      style: GoogleFonts.roboto(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),



                Container(
                  margin: EdgeInsets.all(10),

                  width: 450,
                  height: 85,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/blackbox.png'),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'We Have New Product With Offers ',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$364.95',style: GoogleFonts.workSans(

                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )),
                                Text('\$265.00',style: GoogleFonts.workSans(
                                    color: Color(0xFF707b81),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )  ),
                              ],
                            ),


                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 20, left: 20),
                            child: Flexible(
                              child: Text(
                                '4 days ago',
                                maxLines: 1,
                                style: GoogleFonts.workSans(
                                    color: Color(0xFF707B81),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),

                              ),

                            ),

                          ),

                        ],
                      ),
                    ],
                  ),
                ),







                Container(
                  margin: EdgeInsets.all(10),

                  width: 450,
                  height: 85,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/whitebox.png'),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'We Hve New Product With Offers',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$364.95',style: GoogleFonts.workSans(

                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )),
                                Text('\$265.00',style: GoogleFonts.workSans(
                                    color: Color(0xFF707b81),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                )  ),
                              ],
                            ),


                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 20, left: 20),
                            child: Flexible(
                              child: Text(
                                '4 days ago',
                                maxLines: 1,
                                style: GoogleFonts.workSans(
                                    color: Color(0xFF707B81),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),

                              ),

                            ),

                          ),

                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),


          ],
        ),
      ),
      // Widget's UI code goes here
    );
  }
}
