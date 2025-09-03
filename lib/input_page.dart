import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const chosenColor= Color(0xFF1D1E33);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          // First Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour:chosenColor,
                    cardChild:Column(
                      children:[
                        Icon(
                          FontAwesomeIcons.mars,
                          size:80.0,
                        ),
                        SizedBox(
                          height:15.0,
                        ),
                        Text('MALE',
                        style:TextStyle(fontSize:18.0,color:Color(0xFF8D8E98)),
                        ),
                      ],
                    )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:chosenColor
                  ),
                ),
              ],
            ),
          ),

          // Second Row — One Full-Width Card
          Expanded(
            child: ReusableCard(
                    colour:chosenColor
                  ),
          ),

          // Third Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour:chosenColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:chosenColor,
                  )
                ),
              ],
            ),
          ),
          Container(
            color:Color(0XFFEB1555),
            margin:EdgeInsets.only(top:10.0),
            width:double.infinity,
            height:80.0,
          ),
        ],
      ),

     
    );
  }
}
 class ReusableCard extends StatelessWidget
 {
   final Color colour;
   final Widget? cardChild;
  ReusableCard({required this.colour, this.cardChild });
   @override 
   Widget build(BuildContext context)
   {
    return Container(
      child :cardChild,
      margin: EdgeInsets.all(15.0),
      decoration:BoxDecoration(
        color:colour,
        borderRadius:BorderRadius.circular(10.0),

      ),
    );
   }
 
 }
      
