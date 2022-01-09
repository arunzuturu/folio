import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
        padding: EdgeInsets.all(20),
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
                      'assets/images/sapiens.png',
                      height: size.height * 0.3,
                    ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(80, 0, 20, 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Wrap(
                        runSpacing: 10,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Hello I\'m  ',
                                style: GoogleFonts.poppins(
                                    fontSize: isDesktop(context) ? 60 : 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            TextSpan(
                                text: 'Arun',
                                style: GoogleFonts.poppins(
                                    fontSize: isDesktop(context) ? 70 : 40,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                          ])),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 40, 0),
                      child: SizedBox(
                        width: 300.0,
                        child: DefaultTextStyle(
                          style: GoogleFonts.firaCode(
                            fontWeight: FontWeight.w600,
                            fontSize: isDesktop(context) ? 45 : 25,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Welcome to my portfolio!',
                              ),
                              TypewriterAnimatedText(
                                  'It\'s nice to have you here'),
                              TypewriterAnimatedText(
                                  'Scroll to find more about me'),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 26,),
                  Align(
                    alignment:  isMobile(context) ? Alignment(0,-0.8):Alignment.topLeft , 
                    child: Padding(
                      padding: isMobile(context) ? const EdgeInsets.fromLTRB(50, 40, 40, 0) : const EdgeInsets.fromLTRB(80, 40, 40, 0),
                      child: InkWell(
                        onTap: () {
                          _launchURL('https://drive.google.com/uc?export=download&id=1l3GzpSL4xbJ4aKBKqxoEfZou5Q2wlZNh');
                        },
                        hoverColor: Color(0XFFF1F3F6),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical:15),
                            child: Text(
                              "Download CV",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Image.asset(
                'assets/images/sapiens.png',
                height: size.height * 0.7,
              ))
          ],
        ));
  }
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}








// TextStyle(
//                               fontSize: isDesktop(context) ? 70 : 40,
//                               fontWeight: FontWeight.w800,
//                               color: Colors.black
//                             )