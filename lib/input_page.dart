import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

// Using enums instead of integers to represent gender
enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender; // Nullable to start with nothing selected

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
                // Male Card
                Expanded(
                  
                    child: ReusableCard(
                      onPress:()
                      {
                        setState(()
                        {
                          Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconContent(
                        myIcon: FontAwesomeIcons.mars,
                        myText: 'MALE',
                      ),
                    ),
                  
                ),

                // Female Card
                Expanded(
                  
                    child: ReusableCard(
                      onPress:()
                      {
                        setState(()
                        {
                          Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconContent(
                        myIcon: FontAwesomeIcons.venus,
                        myText: 'FEMALE',
                      ),
                    ),
                  
                ),
              ],
            ),
          ),

          // Second Row — Full Width Card
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
