import 'package:barcode_widget/barcode_widget.dart';
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
                BarcodeWidget(
                  barcode: Barcode.ean13(), // Barcode type and settings
                  data: '999999999999', // Content
                  width: 200,
                  height: 80,
                ),
              ]
          ),
        ),
      ),
    );
  }
}