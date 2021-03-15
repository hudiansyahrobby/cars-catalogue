import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedPos = 0;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", Colors.redAccent,
        labelStyle: TextStyle(fontWeight: FontWeight.normal)),
  ]);

  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  Widget build(BuildContext context) {
    return CircularBottomNavigation(
      tabItems,
      selectedIconColor: Colors.black,
      barBackgroundColor: Colors.black,
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos;
          print(_navigationController.value);
        });
      },
      controller: _navigationController,
    );
  }
}
