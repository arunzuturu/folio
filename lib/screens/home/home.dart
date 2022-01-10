import 'package:flutter/material.dart';
import 'package:flutter_web/components/footer.dart';
import 'package:flutter_web/components/header.dart';
import 'package:flutter_web/components/side_menu.dart';
import 'package:flutter_web/screens/home/components/contact.dart';
import 'package:flutter_web/screens/home/components/skills.dart';


import 'components/aboutme.dart';
import 'components/jumbotron.dart';
import 'components/work.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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


