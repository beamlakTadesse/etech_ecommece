import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/vendors/AppbarWidget.dart';
import 'package:flutter_ecommerce/screens/vendors/DrawerWidget.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppbarWidget(),
      ),
      drawer:DrawerWidget(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        elevation: 5,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.orangeAccent,),
            label: 'Home',
            backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell,color: Colors.orangeAccent,),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note,color: Colors.orangeAccent,),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.orangeAccent,),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}


