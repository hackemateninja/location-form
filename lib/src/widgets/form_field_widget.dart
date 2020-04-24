import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextEditingController controller;
  final Function handleText;



  FormFieldWidget({
    this.icon,
    this.label,
    this.controller,
    @required this.handleText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        fontSize: 14.0,
        letterSpacing: 1.2,
      ),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(icon),
        labelText: label,
      ),
      onChanged: handleText,
    );
  }
}
