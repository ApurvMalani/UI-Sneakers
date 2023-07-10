import 'package:clone/introscrl/pagescrl_2.dart';
import 'package:clone/introscrl/pagescrl_3.dart';
import 'package:clone/textfields/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pageshoe extends StatefulWidget {
  const Pageshoe({Key? key}) : super(key: key);

  @override
  State<Pageshoe> createState() => _PageshoeState();
}

class _PageshoeState extends State<Pageshoe> {
  bool selected = false;

  late final PageController _pageController = PageController();

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      _currentindex = index;
                    });
                  },
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 200.0),
                              child:
                                  Image.asset('assets/images/Ellipse 906.png'),
                            )),
                        Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(30),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 150),
                              child: Image.asset('assets/images/NIKE.png'),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 145),
                          child: SizedBox(
                            child: Center(
                              heightFactor: 2.6,
                              widthFactor: 1,
                              child: Image.asset(
                                'assets/images/Digital Sketches_prev_ui.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: const Alignment(-1, 0.5),
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Start Journey  \nWith Nike',
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          alignment: const Alignment(-1, 0.7),
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Smart, Gorgeous & Fashionable '
                            '\nCollection',
                            style: GoogleFonts.roboto(
                              color: const Color(0xFF707B81),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Pageshoetwo(),
                    const Pageshoethree(),
                  ]),
            ),

            //  2 )   .....
            Container(
              height: 110, color: Colors.white, width: double.infinity,

              //alignment: const Alignment(-1, 0.9),
              margin: const EdgeInsets.only(right: 0),

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      child: Container(
                          margin: const EdgeInsets.only(left: 0),
                          child: SmoothPageIndicator(
                              effect: const ExpandingDotsEffect(
                                  dotWidth: 11,
                                  dotHeight: 5,
                                  dotColor: Color(0xFFE5EEF7),
                                  activeDotColor: Color(0xFF5B9EE1),
                                  radius: 16),
                              controller: _pageController,
                              count: 3)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_currentindex == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signin(),
                            ),
                          );
                        }
                        _pageController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(_currentindex == 0 ? 165 : 105, 54),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          backgroundColor: const Color(0xFF5B9EE1)),
                      child: Text(
                        _currentindex == 0 ? 'Get Started' : "Next",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: (FontWeight.w500)),
                      ),
                    ),
                  ]),
            )
          ],
        ),
        backgroundColor: Colors.white);
  }
}
