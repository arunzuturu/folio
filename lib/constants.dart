import 'package:flutter/material.dart';

const kPrimaryColor = Color(0XFF88C54D);
const kSecondaryColor = Color(0XFFFFC906);
const kTextColor = Color(0XFF282828);
const kButtonbgcolor = Color(0XFFF1F3F6);
const kpagebgcolor = Color(0XFFFEFEFD);
const kpagebgcolor2 =  Color(0XFFBEC0C4);

const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 5,
  color: Colors.grey,
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

