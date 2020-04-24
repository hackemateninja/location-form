import 'package:flutter/material.dart';
import 'package:location_form/src/routes.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart track GPS',
      color: Colors.indigoAccent,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.indigo
      ),
      initialRoute: '/',
      routes: routesBuilder(),
    );
  }
}