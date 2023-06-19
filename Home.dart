import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int slect = 0;

  List imagess = [
    {
      'image': 'assets/images/Nikelogo.jpg',
      'text': 'Nike',
    },
    {
      'image': 'assets/images/Puma.png',
      'text': 'Puma',
    },
    {'image': 'assets/images/Ua.jpg', 'text': 'Under Armour'},
    {
      'image': 'assets/images/adidas.jpg',
      'text': 'Adidas',
    },
    {
      'image': 'assets/images/converse.png',
      'text': 'Converse',
    }
  ];

  List nikelist = [
    {
      'imagenike': 'assets/images/on.png',
      'text2': 'Nike Jordan',
      'text3': '\$493.00'
    },
    {
      'imagenike': 'assets/images/n2.png',
      'text2': 'Nike Air Max',
      'text3': '\$897.99'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commonButton(
                      imgPath: "assets/images/menu (1).png",
                      onPressed: () {},
                    ),
                    Column(
                      children: [
                        Text(
                          ' Store location ',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF707B81),
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/location.png',
                              width: 25.5,
                              height: 18.67,
                            ),
                            Text(
                              'Mondolibug, Sylhet',
                              style: GoogleFonts.roboto(
                                  color: const Color(0xFF1A2530),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFFFFFFFF),
                            minimumSize: const Size(55, 55),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          child: Image.asset(
                            'assets/images/bag.png',
                            width: 24,
                            height: 24,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: 'Looking for shoes',
                        hintStyle: TextStyle(color: Color(0xFF707B81)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF707B81),
                        ),
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
              SizedBox(
                width: 335,
                height: 44,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagess.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(44),
                        color: slect == index
                            ? const Color(0xFF5B9EE1)
                            : Colors.transparent,
                      ),
                      height: 47,
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  imagess[index]['image'],
                                ),
                                radius: 16,
                              ),
                            ),
                          ),
                          slect == index
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      imagess[index]['text'],
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                )
                              : const Center()
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(29.0),
                    child: Text(
                      'Popular Shoes',
                      style: GoogleFonts.quicksand(
                          color: const Color(0xFF1A2530),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF5B9EE1)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Center(
                  heightFactor: 0.700,
                  child: Container(
                   // color: Colors.deepOrange,
                    margin: const EdgeInsets.all(20),
                    width: 380,
                    height: 250,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            SizedBox(
                              width: 175,
                              height: 245,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                color: Colors.white,
                                elevation: 0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 130.0, left: 6),
                                      child: Text(
                                        ' BEST SELLER ',
                                        style: GoogleFonts.quicksand(
                                          color: const Color(0xFF5B9EE1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        nikelist[index]['text2'],
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(5),
                                          padding:
                                              const EdgeInsets.only(left: 3),
                                          child: Text(
                                            nikelist[index]['text3'],
                                            style: GoogleFonts.openSans(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 19),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 33),
                                          decoration: const BoxDecoration(
                                              color: Color(0xFF5B9EE1),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(16),
                                                  bottomRight:
                                                      Radius.circular(16))),
                                          width: 50,
                                          height: 49,
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                          //  child: Icon(Icons.add, color: Colors.white,),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                  heightFactor: 0.750,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 1.0),
                                    child: Image.asset(
                                      nikelist[index]['imagenike'],
                                      width: 170,
                                      height: 200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(29.0),
                    child: Text(
                      'New Arrivals',
                      style: GoogleFonts.quicksand(
                          color: const Color(0xFF1A2530),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF5B9EE1)),
                      ),
                    ),
                  ),

                ],
              ),
              Center(
                heightFactor: 0.690,
                child: SizedBox(

                  width: 350,
                  height: 135,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 0,
                    color: Colors.deepPurple.shade100,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text('BEST CHOICE',style: GoogleFonts.quicksand(
                               fontWeight: FontWeight.w600,
                            color:  Color(0xFF5B9EE1)

                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text('Nike Air Jordan',style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w600,
                               fontSize: 24,
                              color:  Colors.black),),
                        ),


                         Padding(
                           padding: const EdgeInsets.only(left: 25),
                           child: Text('\$849.69',style: GoogleFonts.openSans(
                           color: Colors.black,
                             fontSize: 20,
                             fontWeight: FontWeight.w600

                           ),),
                         ),


                      ],
                      
                    ),

                  ),

                ),
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xFFFFF6F5),
      ),
    );
  }
}

commonButton({required String imgPath, final VoidCallback? onPressed}) {
  return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          // shadowColor: Colors.yellow,
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          minimumSize: const Size(55, 55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Image.asset(
        imgPath,
        width: 21,
        height: 21,
      ));
}
