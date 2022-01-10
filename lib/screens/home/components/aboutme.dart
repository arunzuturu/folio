
import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../constants.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(child: Text("ABOUT ME"),),
        Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            // color: kpagebgcolor,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
                      child: Column(
                        mainAxisAlignment: !isMobile(context)
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.center,
                        crossAxisAlignment: !isMobile(context)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: <Widget>[
                          if (isMobile(context))
                            Image.asset(
                              'assets/images/me.png',
                              height: size.height * 0.3,
                            ),
                          SizedBox(width: 20,height: 20,),
                          Container(
                            padding: const EdgeInsets.fromLTRB(80, 0, 20, 40),
                            child: Flexible(
                              fit: FlexFit.tight,
                              child: AutoSizeText("This is Arun, I am a 19 year old self taught developer, currently pursing major in IT (Sophomore year) . I am a flutter developer who can build both web and app level projects. Learning new things everyday, a bit of anime and a music fanatic",style: GoogleFonts.poppins(
                                  color: Colors.white
                              ),
                                maxLines: 10,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                if (isDesktop(context) || isTab(context))
                  Expanded(
                      child: Image.asset(
                        'assets/images/me.png',
                        height: size.height * 0.5,
                      ))
              ],
            )),
      ],
    );
  }
}