import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fav extends StatelessWidget {
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
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Text(
                    'Favourite',
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
                        Icons.favorite_outline_rounded,
                        size: 20,
                        color: const Color(0xFF1A2530),
                      )),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                SizedBox(height: 150.0),
                Container(
                  color: Color(0xFFEDF2F3),
                  padding: EdgeInsets.only(right: 10, left: 10),
                  width: 500,
                  height: 500,
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    children: <Widget>[
                      _buildCard('BEST SELLER', 'Nike Jordan', '\$58.00',
                          'assets/images/on.png', false, context),
                      _buildCard('BEST SELLER', 'Nike Air Max', '\$37.8',
                          'assets/images/n2.png', false, context),
                      _buildCard('BEST SELLER', 'Nike Club Max', '\$47.7',
                          'assets/images/n3.png', false, context),
                      _buildCard('BEST SELLER', 'Nike Air Max', '\$57.6',
                          'assets/images/Groupw.png', false, context),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        backgroundColor: const Color(0xFFEDF2F3),
      ),
    );
  }
}

Widget _buildCard(String name1, String name2, String prize, String img,
    bool favourite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 5),
    child: InkWell(
      onTap: () {},
      child: Container(
        height: 400,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(

                       color: Color(0xFFEDF2F3),
                      borderRadius: BorderRadius.circular(40)

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 6)),
                        favourite
                            ? Icon(Icons.favorite_border, color: Color(0xFFEF7532))
                            : Icon(Icons.favorite_border, color: Colors.black)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Hero(
                tag: img,
                child: Center(
                  heightFactor: 0.500,
                  child: Container(

                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(

                            image: AssetImage( img), fit: BoxFit.contain,),),
                  ),
                )),
            SizedBox(height: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(name1,style: GoogleFonts.quicksand(
                    color: Color(0xFF5B9EE1),
                    fontWeight: FontWeight.w500,

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(name2 , style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(

                    children: [
                      Text(prize, style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),),
                    Row(
                      children: [
                        Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mycolors[index]
                        ),
                  ),
                      ],
                    ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          color: mycolors[(index + 1) % mycolors.length],
                        ),
                      ),




                    ],
                  ),
                )


              ],
            ),
            

            
          ],
        ),
      ),
    ),
  );
}
List  <Color> mycolors =   [




  Color(0xFFFDFFA7),
  Color(0xFF6CCFC0),


  Color(0xFF92CAFF),
  Color(0xFF656B7E),


  Color(0xFF1685D4),
  Color(0xFFF6C954),


  Color(0xFF7DDBDA),
  Color(0xFF606ACB),

];
int index = 0;
