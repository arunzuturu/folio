import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          // Image.asset(
          //   'assets/images/logo.png',
          //   width: 50,
          // ),

          SizedBox(width: 10),

          Text(
            "Arun Adithya",
            style: GoogleFonts.reenieBeanie(fontSize: 22),
          ),

          Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:3),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _launchURL('https://mail.google.com/mail/u/0/?fs=1&to=arunzuturu@gmail.com&su=%22I%20would%20like%20to%20hire%20you%22&body=BODY&tf=cm');
                        },
                        hoverColor: Color(0XFFF1F3F6),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 2.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            color: Colors.black,
                            // border : Border.all(color: Colors.black, width:2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Hire Me',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  ),
                )
              ],
            ),

          if (isMobile(context))
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );

  }
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
