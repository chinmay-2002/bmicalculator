import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reuasable_card.dart';
import 'Card_content.dart';

const bottomCheight = 80.0;
const activeCardColor = Color(0xFF1D1E33);

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(

        title: Center(
          child: Text(widget.title),
        ),
        backgroundColor: Color(0xFF0A0E21),
      ),

      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Reausable(
                colour: activeCardColor,
                cardChild: IndividualCard(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              )),
              Expanded(child: Reausable(
                colour: activeCardColor,
                  cardChild: IndividualCard(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
              )),
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: Reausable(
                colour: activeCardColor,
                  cardChild: Column(
                children: const [
                  Icon(
                  FontAwesomeIcons.mars,
                  size: 80.0,
                  ),
                  SizedBox(
                  height: 15.0,
                  ),
                  Text('MALE', style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  ),)

                ],
                )
              ))
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: Reausable(
                cardChild: Column(
                  children: const [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('MALE', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),)

                  ],
                ),
                colour: activeCardColor,
              )),
              Expanded(child: Reausable(
                cardChild: Column(
                  children: const [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('MALE', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                    ),)

                  ],
                ),
                colour: activeCardColor,
              )),
            ],
          ),),
          Container(
            color: Colors.red,
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            height: bottomCheight,
          )

        ],
      ),
    );
  }
}










