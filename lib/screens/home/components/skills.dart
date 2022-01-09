import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';
import 'package:flutter_web/screens/home/components/skillcards.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Center(child: Text("SKILLS"),),
        Container(
            padding: EdgeInsets.all(30),
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
                              'assets/images/yoo.gif',
                              height: size.height * 0.3,
                            ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Flutter"),
                              SizedBox(height: 10,),
                              SkillProgressCard(80),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Data structures"),
                              SizedBox(height: 10,),
                              SkillProgressCard(70),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Firebase"),
                              SizedBox(height: 10,),
                              SkillProgressCard(60),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Problem Solving"),
                              SizedBox(height: 10,),
                              SkillProgressCard(50),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Center(child: Text("KNOWN LANGUAGES")),
                          SizedBox(height: 20,),
                          Row(
                          children: [
                            Image.asset('assets/images/python.png',scale: 25,),
                            SizedBox(width: 5,),
                            Text("Python"),
                            SizedBox(width: 15,),
                            Image.asset('assets/images/c.png',scale: 25,),
                            SizedBox(width: 5,),
                            Text("C"),
                            SizedBox(width: 15,),
                            Image.asset('assets/images/dart.png',scale: 40,),
                            SizedBox(width: 5,),
                            Text("Dart"),
                            SizedBox(width: 15,),
                            Image.asset('assets/images/sql.png',scale: 25,),
                            SizedBox(width: 5,),
                            Text("SQL"),
                          ],
                          )

                        ],
                      ),
                    )),
                if (isDesktop(context) || isTab(context))
                  Expanded(
                      child: Image.asset(
                        'assets/images/yoo.gif',
                        height: size.height * 0.5,
                      ))
              ],
            )),
      ],
    );
  }
}