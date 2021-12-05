import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        decoration: BoxDecoration(
            color: kpagebgcolor,
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
                      'assets/images/ay.png',
                      height: size.height * 0.3,
                    ),
                    Container(
                      padding:const EdgeInsets.fromLTRB(80, 0, 20, 40),
                      child: Wrap(
                        runSpacing: 10,
                        children: [
                        RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hello I\'m  ',
                            style: GoogleFonts.poppins(
                              fontSize: isDesktop(context) ? 60 : 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.black
                            )
                          ),
                          TextSpan(
                            text: 'Arun',
                            style:GoogleFonts.poppins(
                              fontSize: isDesktop(context) ? 70 : 40,
                            fontWeight: FontWeight.w800,
                            color: Colors.black
                            )
                          ),
                        ]
                      )
                  ),
                      ],),
                    ),
    
                  Padding(
                    padding: const EdgeInsets.only(left:80),
                    child: SizedBox(
                      width: 350.0,
                      child: DefaultTextStyle(
                        style: GoogleFonts.firaCode(
                          fontWeight: FontWeight.w600,
                          fontSize: isDesktop(context) ? 64 : 32,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('Welcome to my portfolio!',),
                            TypewriterAnimatedText('It\'s nice to have you here'),
                            TypewriterAnimatedText(
                                'Scroll to find more about me'),
                          ],

                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Image.asset(
                'assets/images/ay.png',
                height: size.height * 0.7,
              ))
          ],
        ));
  }
}








// TextStyle(
//                               fontSize: isDesktop(context) ? 70 : 40,
//                               fontWeight: FontWeight.w800,
//                               color: Colors.black
//                             )