import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('EMAIL')
      ),
      body: RaisedButton(
        child: Text('底部消息栏'),
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            content:Text('SnackBar'),duration:Duration(seconds: 5) // 底部消息
          ));
        },
      )
    );
  }
}