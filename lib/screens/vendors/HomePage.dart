import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/vendors/AppbarWidget.dart';
import 'package:flutter_ecommerce/screens/vendors/DrawerWidget.dart';
import 'package:flutter_ecommerce/screens/vendors/HomeScreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_ecommerce/screens/vendors/HomeScreen.dart';

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
    static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Center(
      child: Text(
        'Index 1: Sell',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 2: Product',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 3: More',
        style: optionStyle,
      ),
    ),
  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppbarWidget(),
      ),
      drawer:DrawerWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: _widgetOptions.elementAt(_selectedIndex),

      ),
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Colors.white,
          height: 45,
          color: Colors.blueAccent,
          items: <Widget>[
            Icon(Icons.home, size: 30,color: Colors.orangeAccent,),
            Icon(Icons.sell, size: 30,color: Colors.orangeAccent),
            Icon(Icons.production_quantity_limits, size: 30,color: Colors.orangeAccent),
          ],
          onTap: _onItemTapped,
        ),
      // BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      //   elevation: 5,
      //   backgroundColor: Colors.black,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home,color: Colors.orangeAccent,),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.sell,color: Colors.orangeAccent,),
      //       label: 'Sell',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.production_quantity_limits,color: Colors.orangeAccent,),
      //       label: 'Products',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.more_horiz,color: Colors.orangeAccent,),
      //       label: 'more',
      //     ),

      //   ],
      // ),
    );
  }
}


