import 'package:flutter/material.dart';

class ColoredBackgroundWidget extends StatelessWidget{


  Widget _coloredcontainer ({color}){
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        _coloredcontainer(
          color: Colors.indigo,
        ),
        _coloredcontainer(
          color: Colors.white,
        ),
      ],
    );
  }
}