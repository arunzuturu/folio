
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ProjectProgressCard extends StatefulWidget {
  final String projectName;
  ProjectProgressCard({
    required this.projectName,
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
            color: hovered ? Color(0xff010101): Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              ),
            ]),
        child: Center(
          child: Text(
            widget.projectName,
            style: GoogleFonts.quicksand(
              fontSize: 24,
              color: hovered ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

