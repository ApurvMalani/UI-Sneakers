import 'package:clone/introscrl/pagescrl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int splashtime = 5;

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const Pageshoe();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            'assets/images/splashoff.jpeg',
            fit: BoxFit.fitHeight,
          )),
      Container(
          alignment: Alignment.center,
          child: Text(
            'OXY BOOTS',
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ))
    ]));
  }
}
