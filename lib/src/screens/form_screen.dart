import 'package:flutter/material.dart';

import 'package:location_form/src/widgets/dialog_widget.dart';
import 'package:location_form/src/widgets/location_button.dart';
import 'package:location_form/src/widgets/colored_background_widget.dart';
import 'package:location_form/src/widgets/form_widget.dart';

import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController _controllerIP = TextEditingController();
  TextEditingController _controllerImei = TextEditingController();
  TextEditingController _controllerLat = TextEditingController();
  TextEditingController _controllerLong = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controllerIP.dispose();
    _controllerImei.dispose();
    _controllerLat.dispose();
    _controllerLong.dispose();
  }

  _handleValueIP(ip) {
    setState(() {
      _controllerIP = ip;
    });
  }

  _handleValueImei(imei) {
    setState(() {
      _controllerIP = imei;
    });
  }

  _handleValueLat(lat) {
    setState(() {
      _controllerIP = lat;
    });
  }

  _handleValueLong(long) {
    setState(() {
      _controllerIP = long;
    });
  }

  _handleLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _controllerLat.text = position.latitude.toString();
        _controllerLong.text = position.longitude.toString();
      });
    }).catchError((e) {
      print(e);
    });
  }

  _sendForm() async {
    Map<String, String> body = <String, String>{
      "imei": _controllerImei.text,
      "lat": _controllerLat.text,
      "lng": _controllerLong.text,
      "address": _controllerIP.text
    };

    String url =
        'http://demojuan.orbisys.net/RestFullApi/public/api/registro/nuevo';
    var response = await http.post(url, body: body);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => DialogWidget(
          code: response.statusCode,
          message: response.body.toString(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración de parámetros'),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            ColoredBackgroundWidget(),
            FormWidget(
              controllerIP: _controllerIP,
              controllerImei: _controllerImei,
              controllerLat: _controllerLat,
              controllerLong: _controllerLong,
              handleValueIP: (ip) => _handleValueIP(ip),
              handleValueImei: (imei) => _handleValueImei(imei),
              handleValueLat: (lat) => _handleValueLat(lat),
              handleValueLong: (long) => _handleValueLong(long),
              sendForm: () => _sendForm(),
            )
          ],
        ),
      ),
      floatingActionButton: LocationButton(
        handleLocation: () => _handleLocation(),
      ),
    );
  }
}
