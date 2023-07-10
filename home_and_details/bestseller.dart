import 'package:clone/home_and_details/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bestseller extends StatefulWidget {
  @override
  State<Bestseller> createState() => _BestsellerState();
}

class _BestsellerState extends State<Bestseller> {
  List bestseller = [
    {
      'bsi': 'assets/images/nike222.png',
      'text1': 'BEST SELLER',
      'text2': 'Nike Air Force',
      'text3': 'Men\'s Shoes',
      'text4': '\$367.76'
    },
    {
      'bsi': 'assets/images/wb.png',
      'text1': 'BEST SELLER',
      'text2': 'Nike Air Max',
      'text3': 'Men\'s Shoes',
      'text4': '\$254.89'
    },
    {
      'bsi': 'assets/images/bluecart.png',
      'text1': 'BEST SELLER',
      'text2': 'Nike Jordan',
      'text3': 'Men\'s Shoes',
      'text4': '\$367.76'
    },
    {
      'bsi': 'assets/images/p.png',
      'text1': 'BEST SELLER',
      'text2': 'Nike Air Max',
      'text3': 'Men\'s Shoes',
      'text4': '\$254.89'
    },
    {
      'bsi': 'assets/images/o.png',
      'text1': 'BEST SELLER',
      'text2': 'Nike Air Force',
      'text3': 'Men\'s Shoes',
      'text4': '\$367.76'
    },
    {
      'bsi': 'assets/images/s.png',
      'text1': 'BEST SELLER',
      'text2': 'Nike Air Force',
      'text3': 'Men\'s Shoes',
      'text4': '\$254.89'
    }
  ];

  List<Color> colors = [
    Color(0xFF4EE8CC),
    Color(0xFF1E65B9),
    Color(0xFF3196DC),
    Color(0xFFF04E80),
    Color(0xFF3D8D62),
    Color(0xFF9241E3),
  ];

  List<Color> colors0 = [
    Color(0xFF92CAFF),
    Color(0xFFD0654E),
    Color(0xFF2FB73D),
    Color(0xFF302E80),
    Color(0xFF6D81E9),
    Color(0xFF4C8DD9),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: <Widget>[
      Container(
        height: 70,
        child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

             InkWell(
               onTap: (){

                 Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>Home()));

               },
               child: Container(
                margin: EdgeInsets.only(left: 2,top: 10),
                 width: 50,
                 height: 50,
                 child: Icon(Icons.arrow_back_ios_new_rounded,size: 20,color: Colors.black,),
                 decoration: BoxDecoration( color: Colors.white,

                 borderRadius: BorderRadius.circular(50)
                 ),

               ),
             ),

          Padding(
            padding: const EdgeInsets.only(top: 12,left: 20),
            child: Text(
              'Best Sellers',
              style: GoogleFonts.catamaran(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image.asset(
                'assets/images/sliders.png',
                width: 20,
                height: 20,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image.asset(
                'assets/images/searchbotom.png',
                width: 20,
                height: 20,
              ),
            )

          ],
        ),
      ),
       Expanded(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                shrinkWrap: true,
                children: List.generate(
                  6,
                  (int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Colors.redAccent.shade100,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(bestseller[index]['bsi'])),
                              Text(bestseller[index]['text1'],
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF5B9EE1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  )),
                              Text(
                                bestseller[index]['text2'],
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                bestseller[index]['text3'],
                                style: GoogleFonts.catamaran(
                                  color: Color(0xFF707B81),
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    bestseller[index]['text4'],
                                    style: GoogleFonts.workSans(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: colors[index],
                                        borderRadius: BorderRadius.circular(30)),
                                  ),
                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: colors0[index],
                                        borderRadius: BorderRadius.circular(30)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                childAspectRatio: 0.70,
              ),
            ),
          ),
        ),
      ),
    ])));
  }
}
