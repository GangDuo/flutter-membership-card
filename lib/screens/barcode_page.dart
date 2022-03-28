import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('バーコード'),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.blue,
              Color.fromRGBO(38, 81, 158, 1),
            ],
          ),
        ),
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 36),
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: Center(
              child: Column(children: <Widget>[
                BarcodeWidget(
                  barcode: Barcode.ean13(), // Barcode type and settings
                  data: '999999999999', // Content
                  width: 200,
                  height: 80,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "03:00",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.refresh,
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ])),
    );
  }
}
