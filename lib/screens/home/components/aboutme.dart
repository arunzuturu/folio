import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';


import '../../../constants.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: kpagebgcolor,
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Column(
        children: [
          Center(child: Text("ABOUT ME")),
          Container(
            margin: isDesktop(context) ? EdgeInsets.all(90) : EdgeInsets.all(30),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 15, 50, 10),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a neque lectus. Sed semper eget dolor aliquet accumsan. Quisque erat quam, ultricies eget dignissim non, mollis eget ex. Vestibulum ultricies pulvinar auctor. Praesent convallis odio ex, et accumsan neque maximus scelerisque. Vestibulum vel dui in ex consequat sollicitudin. Quisque neque ipsum, semper et rhoncus id, placerat ac neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut odio eros, dignissim sit amet suscipit non, tincidunt tempor tortor. Donec a vulputate lectus, ac congue nunc.'),
              ))
        ],
      ),
    );
  }
}
