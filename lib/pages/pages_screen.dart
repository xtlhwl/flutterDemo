import 'package:flutter/material.dart';

class PagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('PAGES')
      ),
      body: RaisedButton(
          child: Text('对话框'),
          onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: 'Flutter 对话框',
            applicationVersion: '1.0.0',
          );
        },),
      
    );
  }
}