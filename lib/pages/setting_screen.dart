import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SETTING')
      ),
      body: Builder(
        builder: (context) {
          return RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                  title: Text('SimpleDialog Demo'),
                  children: <Widget>[
                    SimpleDialogOption(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    SimpleDialogOption(
                      child: Text("CANCEL"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              );
            },
            child: Text("ShowDialog"),
          );
        },
      ),
      
    );
  }
}