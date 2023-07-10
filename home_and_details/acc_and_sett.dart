import 'package:clone/home_and_details/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccSe extends StatefulWidget {
  AccSe({Key? key}) : super(key: key);

  @override
  State<AccSe> createState() => _AccSeState();
}

class _AccSeState extends State<AccSe> {
  List nspd = [
    {'img': 'assets/images/Notifications.png', 'txt': 'Notification Setting'},
    {
      'img': 'assets/images/Shopping.png',
      'txt': 'Shipping Address',
    },
    {'img': 'assets/images/Payment.png', 'txt': 'Payment Info'},
    {'img': 'assets/images/delete.png', 'txt': 'Delete Account'}
  ];

  List apstxt = [
    {'fonts': 'Eneble Face ID For Log In'},
    {'fonts': 'Eneble Push Notifications'},
    {'fonts': 'Eneble Location Servies'},
    {'fonts': 'Dark Mode'},
  ];

  List<bool> switchValues = [false, false, false, false];

  void onChanged(int index, bool value) {
    setState(() {
      switchValues[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 15),
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

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
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Text(
                    'Account & Settings',
                    style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            heightFactor: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Account',
                style: GoogleFonts.oxygen(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, _seprated) {
                return ListTile(
                  leading: Image.asset(nspd[_seprated]["img"],
                      width: 26, height: 26),
                  title: Text(
                    nspd[_seprated]["txt"],
                    style: GoogleFonts.quicksand(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Color(0xff707b81),
                  ),
                );
              },
              separatorBuilder: (context, _saprated) => Divider(
                    height: 1,
                    color: Color(0xFFe9edef),
                  ),
              itemCount: 4),
          Align(
            alignment: Alignment.centerLeft,
            heightFactor: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'App Settings',
                style: GoogleFonts.oxygen(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, _seprated) {
                return ListTile(
                    leading: Text(
                      apstxt[_seprated]['fonts'],
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    trailing: CupertinoSwitch(
                      trackColor: Color(0xffE4E4E4),
                      activeColor: Color(0xff5b9ee1),
                      thumbColor: Colors.white,
                      //focusColor: Colors.deepPurple,
                      value: switchValues[_seprated],
                      onChanged: (value) => onChanged(_seprated, value),
                    ));
              },
              separatorBuilder: (context, _saprated) => Divider(
                    height: 1,
                    color: Color(0xFFe9edef),
                  ),
              itemCount: 4),
        ],
      )),
    );
  }
}
