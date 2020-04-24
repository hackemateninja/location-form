import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget{

  final Function handleLocation;

  LocationButton({this.handleLocation});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.location_searching),
      backgroundColor: Colors.indigoAccent,
      onPressed: handleLocation,
    );
  }
}