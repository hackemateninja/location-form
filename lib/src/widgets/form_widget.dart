import 'package:flutter/material.dart';
import 'package:location_form/src/widgets/form_button_widget.dart';
import 'package:location_form/src/widgets/form_field_widget.dart';
import 'package:location_form/src/widgets/hour_widget.dart';

class FormWidget extends StatelessWidget {

  final TextEditingController controllerIP;
  final TextEditingController controllerImei;
  final TextEditingController controllerLat;
  final TextEditingController controllerLong;

  final Function handleValueIP;
  final Function handleValueImei;
  final Function handleValueLat;
  final Function handleValueLong;

  final Function sendForm;

  FormWidget({
    this.controllerIP,
    this.controllerImei,
    this.controllerLat,
    this.controllerLong,
    this.handleValueLat,
    this.handleValueLong,
    this.handleValueIP,
    this.handleValueImei,
    this.sendForm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
      padding: EdgeInsets.all(15.0),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          FlutterLogo(
            size: 90.0,
          ),
          FormFieldWidget(
            icon: Icons.wifi,
            label: 'Dirección IP',
            controller: controllerIP,
            handleText: handleValueIP,
          ),
          FormFieldWidget(
            icon: Icons.gps_fixed,
            label: 'Imei del GPS',
            controller: controllerImei,
            handleText: handleValueImei,
          ),
          FormFieldWidget(
            icon: Icons.location_on,
            label: 'Latitud',
            controller: controllerLat,
            handleText: handleValueLat,
          ),
          FormFieldWidget(
            icon: Icons.location_on,
            label: 'Longitud',
            controller: controllerLong,
            handleText: handleValueLong,
          ),
          HourWidget(),
          FormButtonWidget(
            sendForm: sendForm,
          ),
        ],
      ),
    );
  }
}
