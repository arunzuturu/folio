import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: kpagebgcolor,
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text("ABOUT ME")),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40,horizontal: 40),
              margin:
                  isDesktop(context) ? EdgeInsets.all(40) : EdgeInsets.all(30),
              color: Colors.black,
              child: Row(
                children: [
                   (isMobile(context)) ?
                    Image.asset(
                      'assets/images/me.png',
                      height: size.height * 0.2,
                    )
                  :
                       Image.asset("assets/images/me.png",
                         height: size.height * 0.4,
                       ),
                  SizedBox(width: 20,),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text("This is Arun, I am a 19 year old self taught developer, currently pursing major in IT (Sophomore year) . I am a flutter developer who can build both web and app level projects. Learning new things everyday, a bit of anime and a music fanatic",style: GoogleFonts.poppins(
                      color: Colors.white
                    ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
