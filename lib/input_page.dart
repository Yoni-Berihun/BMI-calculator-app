import 'package:flutter/material.dart';

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
                    colour:Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),

          // Second Row — One Full-Width Card
          Expanded(
            child: ReusableCard(
                    colour:Color(0xFF1D1E33),
                  ),
          ),

          // Third Row — Two Cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour:Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:Color(0xFF1D1E33),
                  )
                ),
              ],
            ),
          ),
        ],
      ),

     
    );
  }
}
 class ReusableCard extends StatelessWidget
 {
   final Color colour;
  ReusableCard({required this.colour });
   @override 
   Widget build(BuildContext context)
   {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration:BoxDecoration(
        color:colour,
        borderRadius:BorderRadius.circular(10.0),

      ),
    );
   }
 
 }
      
