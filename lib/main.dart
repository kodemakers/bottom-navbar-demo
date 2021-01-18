import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample',
      home: BottomNavBarExample(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class BottomNavBarExample extends StatefulWidget {
  BottomNavBarExample({Key key}) : super(key: key);

  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

/// This is the private State class that goes with BottomNavBarExample.
class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  
  int _selectedIndex = 0;
  
  static const TextStyle optionStyle =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w600);
      
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
  ];

/// used to change the value of the _selectedIndex.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        /// This will make a corresponding page/screen to display based on _selectedIndex.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
