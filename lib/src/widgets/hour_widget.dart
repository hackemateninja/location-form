import 'package:flutter/material.dart';

class HourWidget extends StatelessWidget{
  DateTime time = new DateTime.now();


  String _check(time){
    String result;
    if (time < 10){
      return result = "0$time";
    }
    return result = "$time";
  }


  String _formatDateTime(DateTime time) {
    String day = '${_check(time.day)}';
    String month = '${_check(time.month)}';
    String year = '${_check(time.year)}';
    String hour = '${_check(time.hour)}';
    String minute = '${_check(time.minute)}';

    String fullDate = '$day/$month/$year -  $hour:$minute';
    return fullDate;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.access_time),
        enabled: false,
        labelText: "${_formatDateTime(time)}"
      ),
    );
  }
}