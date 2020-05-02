import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Row TinyBoxes() {
    return Row(
      children: <Widget>[
        Expanded(
          child: LongBox(),
        ),
         Expanded(
          child: LongBox(),
        ),
      ],
    );
  }

  Container LongBox() {
    return Container(
      margin: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // This cannot be outside of decoration, else app crashes.
        color: Color(0xFF1D1E33),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: TinyBoxes(),
          ),
          Expanded(
            child: LongBox(),
          ),
          Expanded(
            child: TinyBoxes(),
          ),
        ],
      ),
    );
  }
}

/*

body: Container(
// Container can overflow in stiaUTAIONS.
width: 200,
height: 100,
decoration: BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(10)),
// This cannot be outside of decoration, else app crashes.
color: Color(0xFF1D1E33),
),
)

 */