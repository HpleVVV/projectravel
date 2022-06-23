import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projecttravel/constants/global_variables.dart';
import 'package:projecttravel/features/home/screens/home_screen.dart';

import '../../features/account/screens/account_screen.dart';
import '../../features/savedplan/screens/savedplan_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
    const SavedPlanScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        color: GlobalVariables.backgroundColor,
        backgroundColor: Colors.transparent,
        height: 50,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home),
          Icon(Icons.account_box),
          Icon(Icons.save),
        ],
        onTap: updatePage,
      ),
    );
  }
}
