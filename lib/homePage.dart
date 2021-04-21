import 'package:flutter/material.dart';
import 'package:myapp/barcodePage.dart';
import 'package:myapp/dataPage.dart';
import 'package:myapp/profilPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    ProfilPage(tombol: "tombol"),
    DataPage(),
    BarcodePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            label: 'Lorem',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Barcode',
          ),
        ],
      ),
    );
  }
}
