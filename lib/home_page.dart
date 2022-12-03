import 'package:flutter/material.dart';

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
              )),
              Expanded(child: Reausable(
                colour: activeCardColor,
              )),
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: Reausable(
                colour: activeCardColor,
              ))
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: Reausable(
                colour: activeCardColor,
              )),
              Expanded(child: Reausable(
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








class Reausable extends StatelessWidget {
  Reausable({required this.colour});
  // final Widget cardChild ;
  final Color colour ;
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),
      // child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
