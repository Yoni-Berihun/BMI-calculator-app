import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

//using enums to assign gender rather than using intjer to assign 
enum Gender{
  male,
  female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

Color maleCardColour = inactiveCardColour;
Color femaleCardColour = inactiveCardColour;


void updateColour(Gender selectedGender)
{
  if(selectedGender == Gender.male)
  { 
    if(maleCardColour==inactiveCardColour)
    {
    maleCardColour =activeCardColour;
    femaleCardColour=inactiveCardColour;
    }
    else
    {
    maleCardColour =inactiveCardColour;
    }
  }
  if(selectedGender == Gender.female)
  {
    if(femaleCardColour==inactiveCardColour)
    {
    femaleCardColour =activeCardColour;
    maleCardColour=inactiveCardColour;
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
                      updateColour(Gender.male);
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
                  child:GestureDetector(

                    onTap: ()
                    {
                      setState((){
                        updateColour(Gender.female);
                      });
                    },
                    child:ReusableCard(
                    colour: inactiveCardColour,
                    cardChild:  IconContent(
                      myIcon: FontAwesomeIcons.venus,
                      myText: 'FEMALE',
                    ),
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





