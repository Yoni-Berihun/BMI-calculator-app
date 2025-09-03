import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const chosenColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          // First Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: chosenColor,
                    cardChild:  IconContent(
                      myIcon: FontAwesomeIcons.mars,
                      myText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: chosenColor,
                    cardChild:  IconContent(
                      myIcon: FontAwesomeIcons.venus,
                      myText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Second Row — One Full-Width Card
          Expanded(
            child: ReusableCard(
              colour: chosenColor,
            ),
          ),

          // Third Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: chosenColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: chosenColor,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Container
          Container(
            color: const Color(0XFFEB1555),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}





