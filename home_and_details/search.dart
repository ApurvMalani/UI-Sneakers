import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchh extends StatefulWidget {
  const Searchh({Key? key}) : super(key: key);

  @override
  State<Searchh> createState() => _SearchhState();
}

class _SearchhState extends State<Searchh> {
  int index = 0;
  List name = [
    {'text': 'Nike Air Max Shoes'},
    {'text': 'Nike Jordan Shoes'},
    {'text': 'Nike Air Force Shoes'},
    {'text': 'Nike Club Max Shoes'},
    {'text': 'Sneakers Nike Shoes'},
    {'text': 'Regular Shoes'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Search',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    clipBehavior: Clip.hardEdge,
                    child: Text('Cancel',
                        style: GoogleFonts.quicksand(
                            color: Color(0xff5b9ee1),
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Search Your Shoes',
                      hintStyle:
                          GoogleFonts.quicksand(fontWeight: FontWeight.w500),
                      prefixIcon: Icon(Icons.search_outlined),
                      prefixIconColor: Color(0xff707b81),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 20),
                  child: Text(
                    'Shoes',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 360,
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (BuildContext, index) {
                      return ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -3),
                        leading: Image.asset(
                          'assets/images/past.png',
                          width: 25,
                          height: 25,
                        ),
                        title: Text(
                          name[index]['text'],
                          style: GoogleFonts.oxygen(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ]),
        ),
        backgroundColor: const Color(0xFFEDF2F3),
      ),
    );
  }
}
