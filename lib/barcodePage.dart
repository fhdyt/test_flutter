import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodePage extends StatefulWidget {
  BarcodePage({Key? key}) : super(key: key);

  @override
  _BarcodePageState createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  String? barcode = "Gagal";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            barcode.toString(),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 200),
          RaisedButton(
            onPressed: () {
              _scanBarcode();
            },
            child: Text("Barcode"),
          )
        ],
      ),
    );
  }

  Future _scanBarcode() async {
    barcode = await FlutterBarcodeScanner.scanBarcode(
        "#ffffff", "Batal", true, ScanMode.BARCODE);
    setState(() {
      this.barcode = barcode;
    });
  }
}
