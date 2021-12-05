import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                  title: 'ABOUT',
                  tapEvent: () {},
                  isbutton: false,
                ),
                SizedBox(height:10),
                NavItem(
                  title: 'WORK',
                  tapEvent: () {},
                  isbutton: false,
                ),
                SizedBox(height:10),
                NavItem(
                  title: 'CONTACT',
                  tapEvent: () {},
                  isbutton: false,
                ),
                SizedBox(height:10),
                NavItem(
                  title: 'HIRE ME',
                  tapEvent: () {},
                  isbutton: true,
                ),
                SizedBox(height:10),
            ],
          ),
        ),
      ),
    );
  }
}