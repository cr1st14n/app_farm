import 'package:flutter/material.dart';

class indexPage extends StatefulWidget {
  @override
  _indexPageState createState() => _indexPageState();
}

class _indexPageState extends State<indexPage> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Buscar'),
    ),
    Center(
      child: Text('Camara'),
    ),
    Center(
      child: Text('Perfil'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('boton de navegacion'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 20,
        // backgroundColor: Colors.blueGrey[700],
        fixedColor: Colors.purple[700],
        // unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            // backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscar'),
            // backgroundColor: Colors.tealAccent[700]
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('Camara'),
            // backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
            // backgroundColor: Colors.amber
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
