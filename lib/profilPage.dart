import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  ProfilPage({Key? key, @required this.tombol}) : super(key: key);
  String? tombol;

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int number = 0;

  tambahdata() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "data " + number.toString(),
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(height: 200),
          RaisedButton(
            onPressed: tambahdata,
            child: Text(widget.tombol.toString()),
          )
        ],
      ),
    );
  }
}
