import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

Color maleCardColour = inactiveCardColour;
Color femaleCardColour = inactiveCardColour;

//let 1 = male and 2= female
void updateColour(int gender)
{
  if(gender == 1)
  { 
    if(maleCardColour==inactiveCardColour)
    {
    maleCardColour =activeCardColour;
    }
    else
    {
    maleCardColour =inactiveCardColour;
    }
  }
  if(gender == 2)
  {
    if(femaleCardColour==inactiveCardColour)
    {
    femaleCardColour =activeCardColour;
    }
    else
    {
    femaleCardColour =inactiveCardColour;
    }
  }
  
}

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
                  child:
                  GestureDetector( 
                    onTap:(){
                      setState((){
                      updateColour(1);
                      });
                    },
                    child:ReusableCard(
                    colour: inactiveCardColour,
                    cardChild:  IconContent(
                      myIcon: FontAwesomeIcons.mars,
                      myText: 'MALE',
                    ),
                  ),
                ),
                ),

                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColour,
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
              colour: inactiveCardColour,
            ),
          ),

          // Third Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColour,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Container
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}





