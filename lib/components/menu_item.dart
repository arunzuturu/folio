import 'package:flutter/material.dart';

import '../constants.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.title,
    required this.tapEvent,
    required this.isbutton,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  final bool isbutton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: tapEvent,
          hoverColor: Color(0XFFF1F3F6),
          child: Container(
            decoration: BoxDecoration(
              color: (isbutton) ? Colors.black : Colors.transparent,
              // border : Border.all(color: Colors.black, width:2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                title,
                style: TextStyle(
                  color: (isbutton) ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w800
                ),
              ),
            ),
          ),
        ),
        SizedBox(width:10)
      ],
    );
  }
}