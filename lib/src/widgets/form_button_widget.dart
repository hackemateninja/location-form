import 'package:flutter/material.dart';


class FormButtonWidget extends StatelessWidget{
  final Function sendForm;
  
  FormButtonWidget({this.sendForm});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:20.0),
      child: RaisedButton(
        color: Colors.indigoAccent,
        textColor: Colors.white,
        padding: EdgeInsets.all(5.0),
        child: Text('Guardar'),
        onPressed: sendForm,
      ),
    );
  }
}