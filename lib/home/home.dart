import 'package:flutter/material.dart';
import 'package:send_wire_test/home/dashboard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

List<Widget> _pages = <Widget>[
  Dashboard(),
  Container(
    color: Colors.grey,
  ),
  Container(
    color: Colors.lightGreen,
  ),
  Container(color: Colors.amberAccent),
];

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: changeIndex,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            label: "Wallets",
            icon: Icon(Icons.account_balance_wallet_outlined),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
              ),
              label: "Cards"),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart), label: "Transactions"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Profile")
        ],
      ),
    );
  }
}
