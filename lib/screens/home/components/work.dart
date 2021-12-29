import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home/components/workcard.dart';
import 'package:hovering/hovering.dart';

import '../../../constants.dart';
class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(padding: const EdgeInsets.fromLTRB(80, 0, 20, 40),
    child: ProjectProgressCard(
      projectName: 'Travel Comrode',
    ),
    );
  }
}


