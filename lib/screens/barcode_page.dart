import 'package:flutter/material.dart';

class BarcodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('バーコード'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
              children: <Widget> [
                Text('9999999999999'),
              ]
          ),
        ),
      ),
    );
  }
}