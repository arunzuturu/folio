import 'package:flutter/material.dart';
import 'package:flutter_web/components/footer.dart';
import 'package:flutter_web/components/header.dart';
import 'package:flutter_web/components/side_menu.dart';
import 'package:flutter_web/screens/home/components/contact.dart';
import 'package:flutter_web/screens/home/components/skills.dart';


import 'components/aboutme.dart';
import 'components/jumbotron.dart';
import 'components/work.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    Size size = MediaQuery.of(context).size;
    final List<GlobalKey> _key = List.generate(20, (index) => GlobalKey());
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300
        ),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(),
                Jumbotron(),
                Aboutme(),
                Work(),
                Skills(),
                Contact(),
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

