import 'package:clone/home_and_details/acc_and_sett.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            color: Color(0xFF05263b),
            child: /*Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
               // Container(color: Color(0xFF05263b)),

                Image.asset('assets/images/ab.png',width: 90,height: 90),
                Text('Hey, 👋',style: GoogleFonts.roboto(
                  color: Color(0xff707b81),
                  fontSize: 25),),
                Text('Alisson Becker',style: GoogleFonts.roboto(

                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400
                ),),

                Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.person_outline,
                                  color: Color(0xff707B81), size: 30),
                      Text('Profile',style: GoogleFonts.roboto(color: Colors.white,
                            fontSize: 20),)],),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [Icon(Icons.home_outlined,
                        color: Color(0xff707B81), size: 30),
                      Text('Home',style: GoogleFonts.roboto(color: Colors.white,
                          fontSize: 20),)],),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [Icon(MdiIcons.shoppingOutline,
                        color: Color(0xff707B81), size: 30),
                      Text('My Cart',style: GoogleFonts.roboto(color: Colors.white,
                          fontSize: 20),)],),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [Icon(Icons.favorite_border_rounded,
                        color: Color(0xff707B81), size: 30),
                      Text('Profile',style: GoogleFonts.roboto(color: Colors.white,
                          fontSize: 20),)],),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [Icon(MdiIcons.truckDeliveryOutline,
                        color: Color(0xff707B81), size: 30),
                      Text('Orders',style: GoogleFonts.roboto(color: Colors.white,
                          fontSize: 20),)],),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [Icon(Icons.notifications_active_outlined,
                        color: Color(0xff707B81), size: 30),
                      Text('Notifications',style: GoogleFonts.roboto(color: Colors.white,
                          fontSize: 20),)],),

                            Center(

                                heightFactor: 3,
                                child: Image.asset('assets/images/line.png',width: 200,height: 200,))







                  ],

                )

              ],
            ),*/

                Image.asset(
              'assets/images/Profile.png',
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0, top: 50),
            child: Image.asset(
              'assets/images/menulist.png',
              width: 350,
              height: 350,
            ),
          ),
          Column(

            children: [
              Center(
                heightFactor: 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Image.asset(
                    'assets/images/line.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
              TextButton(
                onPressed: (){

                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> AccSe()));


                },
                child: Row(
                  children: [
                    Center(
                      heightFactor: 0.1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 70.0),
                        child: InkWell(
                            child: Image.asset(
                              'assets/images/exit.png',
                              width: 30,
                              height: 30,
                            )),
                      ),
                    ),
                    Text(
                      'Sign Out',
                      style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              )

            ],
          ),



        ],
      ),
    );
  }
}
