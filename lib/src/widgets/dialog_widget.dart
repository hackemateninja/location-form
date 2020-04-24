import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  final String message;
  final int code;

  DialogWidget({
    this.message,
    this.code,
  });

  bool messageCheck(String m, int c) {
    bool resp;
    if (c != 200) {
      return resp = false;
    }
    return resp = true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: <Widget>[
        FlatButton(
          child: Text("Accept"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
      title: Text(message),
      content: messageCheck(message, code)
          ? Icon(
              Icons.check,
              color: Colors.green,
              size: 50.0,
            )
          : Icon(
              Icons.error,
              color: Colors.red,
              size: 50.0,
            ),
    );
  }
}
