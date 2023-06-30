import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Deetails extends StatefulWidget {
  final String image;

  const Deetails({super.key, required this.image});

  @override
  State<Deetails> createState() => _DeetailsState();
}

class _DeetailsState extends State<Deetails> {
  List num = [
    {'nm': '38'},
    {'nm': '39'},
    {'nm': '40'},
    {'nm': '41'},
    {'nm': '42'},
    {'nm': '43'}
  ];

  List rowshoes = [
    {
      'rs_1': 'assets/images/n2.png',
    },
    {
      'rs_1': 'assets/images/on.png',
    },
    {'rs_1': 'assets/images/n3.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
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
                  padding: const EdgeInsets.only(left: 33.0),
                  child: Text(
                    'Men\'s Shoes',
                    style: GoogleFonts.catamaran(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 60),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.white,
                          elevation: 0,
                          backgroundColor: const Color(0xFFFFFFFF),
                          minimumSize: const Size(50, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: Icon(
                        MdiIcons.shoppingOutline,
                        size: 18,
                        color: const Color(0xFF1A2530),
                      )),
                ),
              ],
            ),
            Center(
              heightFactor: 0.850,
              child: Container(
                margin: const EdgeInsets.only(right: 30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 65),
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: Hero(
                      tag: widget.image,
                      child: Image.asset(
                        widget.image,
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              heightFactor: 1.65,
              child: Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.only(bottom: 100),
                child: Image.asset(
                  'assets/images/Aurora.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.only(top: 325),
                      height: 600,
                      width: 400,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BEST SELLER',
                              style: GoogleFonts.openSans(
                                color: const Color(0xFF5B9EE1),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Nike Air Jordan',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            ),
                            Text(
                              '\$967.800',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25),
                            ),
                            Container(
                              margin: const EdgeInsets.all(4),
                              child: Text(
                                'Air Jordan is an American brand of basketball'
                                'shoes athletic, casual, and style clothing '
                                'produced by Nike....',
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: const Color(0xFF707B81)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5, top: 10),
                              child: Text(
                                'Gallery',
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25),
                              ),



                               // List  shoes ..........

                            ),
                            SizedBox(
                              child: Row(
                                children: [

                                  Center(
                                    heightFactor: 0.80,
                                    child: Container(

                                      color: Colors.white,
                                      margin: const EdgeInsets.all(20),

                                      width: 280,
                                      height: 95,

                                      ////  List  View  Shoes ...............................

                                      child: Row(

                                        children: [
                                          Expanded(
                                            child: ListView.builder(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                itemCount: rowshoes.length,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder:
                                                    (context, index) {
                                                  return Container(

                                                    width: 70,
                                                    height: 60,
                                                    margin:
                                                        const EdgeInsets.all(
                                                            8),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(25),

                                                              color: const Color(0xFFEDF2F3),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Image.asset(
                                                            rowshoes[index]
                                                                ['rs_1'],
                                                            width: 65,
                                                            height: 65,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              heightFactor: 0.300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Size',
                                        style: GoogleFonts.roboto(
                                            fontSize: 21,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(children: [
                                    Container(
                                      margin: const EdgeInsets.all(7),
                                      child: Text(
                                        'EU',
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      child: Text(
                                        'US',
                                        style: GoogleFonts.roboto(
                                            color: const Color(0xFF707B81),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17),
                                      ),
                                    ),
                                    Text(
                                      'UK',
                                      style: GoogleFonts.roboto(
                                          color: const Color(0xFF707B81),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    )
                                  ])
                                ],
                              ),
                            ),
                            Center(
                              heightFactor: 1.7,
                              child: SizedBox(
                                width: 800,
                                height: 50,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: num.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return SizedBox(
                                              width: 70,
                                              height: 65,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    const Color(0xFFEDF2F3),
                                                child: Text(
                                                  num[index]['nm'],
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      color: const Color(
                                                          0xFF707B81)),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white),
                    height: 90,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: GoogleFonts.openSans(
                                      color: const Color(0xFF707B81),
                                     fontSize: 20
                                  ),
                                ),
                                Text(
                                  '\$849.69',
                                  style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),

                              ],
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize: const Size(155, 54),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50)),
                                    backgroundColor: const Color(0xFF5B9EE1)),
                                child: Text(
                                  'Add To Cart',
                                  style: GoogleFonts.roboto(
                                      fontSize: 18, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
        backgroundColor: const Color(0xFFEDF2F3),
      ),
    );
  }
}
