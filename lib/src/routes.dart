import 'package:flutter/material.dart';
import 'package:location_form/src/screens/home_screen.dart';
import 'package:location_form/src/screens/form_screen.dart';


Map<String, WidgetBuilder> routesBuilder(){
  return {
    '/': (BuildContext context)=> HomeScreen(),
    '/form': (BuildContext context)=>FormScreen(),
  };
}