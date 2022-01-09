import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class SkillProgressCard extends StatefulWidget {
  //const SkillProgressCard({Key? key}) : super(key: key);
  final int progess;
  SkillProgressCard(
     this.progess
      );

  @override
  _SkillProgressCardState createState() => _SkillProgressCardState();
}

class _SkillProgressCardState extends State<SkillProgressCard> {
  @override
  Widget build(BuildContext context) {
    return FAProgressBar(
      currentValue: widget.progess,
      borderRadius: BorderRadius.circular(15),
      backgroundColor: Colors.white,
      changeProgressColor: Colors.black,
      progressColor: Colors.black,
      displayText: null,
      size: 4,
    );
  }
}

