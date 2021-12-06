import 'package:flutter/material.dart';

import '../../../constants.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: kpagebgcolor,
      margin: EdgeInsets.symmetric(vertical:40, horizontal:40),
      child: Column(
        children: [
          Center(child: Text("ABOUT ME")),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('A 19 year old programmer not really trying to achiever anything \n This has been a really nice ride btw\n, oh yea nvm this is just basic text'),
          )
        ],
      ),

    );
  }
}