import 'package:flutter/material.dart';

import 'contactform.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
        child : Column(
          children: [
            Center(child: Text("CONTACT"),),
            Center(child: ContactForm()),
          ],
        )
    );
  }
}
