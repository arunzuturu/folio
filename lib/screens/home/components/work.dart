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
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
    child: Center(
      child: Column(
        children: [
      Center(child: Text("PROJECTS")),
          SizedBox(height: 20,),
          Wrap(
            runSpacing: 20,
            children: [
              ProjectProgressCard(
                projectName: 'Feather',
                url: "https://github.com/arunzuturu/feather",
                projectDescription: "Get the weather in a beautiful and powerful app. See current weather with a smart layout that updates as conditions change.",
              ),
              SizedBox(width: 25),
              ProjectProgressCard(
                projectName: 'Covid 19 Tracer',
                url: "https://github.com/arunzuturu/coividapp",
                projectDescription: "An All In One Covid-19 App, find vaccines, case statistics, isolation helpers and a lot more baked into one portable app.",
              ),
              SizedBox(width: 25),
              ProjectProgressCard(
                url: "https://github.com/arunzuturu/VJH_003",
                projectName: 'Medigo',
                projectDescription: "A medical app that locates nearest health centers,based on users location on a live database.",
              ),
              SizedBox(width: 25),
              ProjectProgressCard(
                url: "https://github.com/arunzuturu",
                projectName: 'Coming Soon',
                projectDescription: "coming soon.",
              ),

            ],


          ),
        ],
      ),
    ),
    );
  }
}


