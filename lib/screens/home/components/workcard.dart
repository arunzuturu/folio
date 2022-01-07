import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import 'package:url_launcher/url_launcher.dart';
class ProjectProgressCard extends StatefulWidget {
  final String projectName;
  final String projectDescription;
  final String url;
  ProjectProgressCard({
    required this.projectName,
    required this.projectDescription,
    required this.url
  });
  @override
  _ProjectProgressCardState createState() => _ProjectProgressCardState();
}

class _ProjectProgressCardState extends State<ProjectProgressCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 275),
          height: hovered ? 300.0 : 295.0,
          width: hovered ? 250.0 : 245.0,
          decoration: BoxDecoration(
              color: hovered ? Color(0xff010101) : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                ),
              ]),
          child: Center(
              child: DefaultTextStyle(
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w600,
              fontSize: isDesktop(context) ? 45 : 25,
              color: hovered ? Colors.white : Colors.black,
            ),
            child: !hovered
                ?  (widget.projectName == "Coming Soon") ? AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(widget.projectName),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ):
                Text(widget.projectName)
                : Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedTextKit(animatedTexts: [
                          TypewriterAnimatedText(
                            widget.projectName,
                          ),
                        ]),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
                        child: Text(widget.projectDescription, style: GoogleFonts.openSans(
                          fontSize: isDesktop(context) ? 15 : 15
                        ),
                          textAlign:TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      ElevatedButton(onPressed: (){
                        _launchURL(widget.url);
                      }, child: Text("Check Github",
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
          )),
        ));
  }
}
_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}