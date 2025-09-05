import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Using enums instead of integers to represent gender
enum Gender {
  male,
  female,
}

int height = 180;
int weight = 60;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // First Row — Two Cards
          Expanded(
            child: Row(
              children: [
                // Male Card
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      myIcon: FontAwesomeIcons.mars,
                      myText: 'MALE',
                    ),
                  ),
                ),

                // Female Card
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
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
              colour: kInactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data:SliderTheme.of(context).copyWith(
                      inactiveTrackColor:Color(0xFF8D8E98),
                      activeTrackColor:Colors.white,
                      thumbColor:Color(0xFFB1555),
                      overlayColor:Color(0x29EB1555),
                      thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius:15.0),
                      overlayShape:
                        RoundSliderOverlayShape(overlayRadius:30.0) , 
                    ) ,                 
                  child:Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: const Color(0xFFEB1555),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                  ),
                ],
              ),
            ),
          ),

          // Third Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColour,
                    cardChild: Column(
                      children:[
                        Text(
                          'WEIGHT',
                          style:kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style:kNumberTextStyle,
                        ),
                        Row(
                          children:[ 
                            RoundIconButton(icon:FontAwesomeIcons.plus),
                            SizedBox(
                              width:10.0
                            ),
                            RoundIconButton(icon:FontAwesomeIcons.minus),
                          ],
                        ),  
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Container
          Container(
            color: kBottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
class RoundIconButton extends StatelessWidget
{
  final IconData? icon;
  RoundIconButton({this.icon});
  @override
  Widget build(BuildContext context)
  {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed: ()
      {

      },
      elevation:6.0,
      constraints:BoxConstraints.tightFor(
        width:56.0,
        height:56.0,
      ),
      shape:CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}