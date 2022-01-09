import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'All Right Reserved',
              style: TextStyle(
                fontSize: 10
              ),
            )
          ),

          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                NavItem(
                  title: 'Twitter',
                  tapEvent: () {
                    _launchURL('https://twitter.com/Arunadithya11');
                  },
                ),

                NavItem(
                  title: 'Facebook',
                  tapEvent: () { _launchURL('https://www.facebook.com/arun.adithya.100/');},
                ),

                NavItem(
                  title: 'Linkedin',
                  tapEvent: () {_launchURL('https://www.linkedin.com/in/arun-adithya-zuturu-7b524414a/');},
                ),

                NavItem(
                  title: 'Instagram',
                  tapEvent: () { _launchURL('https://www.instagram.com/just_arunz/');},
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          Text(
            'All Right Reserved',
            style: TextStyle(
              fontSize: 10
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              NavItem(
                title: 'Twitter',
                tapEvent: () {
                  _launchURL('https://twitter.com/Arunadithya11');
                },
              ),

              NavItem(
                title: 'Facebook',
                tapEvent: () {
                  _launchURL('https://www.facebook.com/arun.adithya.100/');
                },
              ),

              NavItem(
                title: 'Linkedin',
                tapEvent: () {
                  _launchURL('https://www.linkedin.com/in/arun-adithya-zuturu-7b524414a/');
                },
              ),

              NavItem(
                title: 'Instagram',
                tapEvent: () {
                  _launchURL('https://www.instagram.com/just_arunz/');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.title,
    required this.tapEvent
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12
          ),
        ),
      ),
    );
  }
  
}