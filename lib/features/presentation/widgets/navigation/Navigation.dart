import 'package:flutter/material.dart';
import './components/bottom_navigation.dart';
import './components/side_navBar.dart';

class Navigation extends StatefulWidget {

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books Library'),
      ),
      drawer:SideNavBar(),
      body: LandingPage(),
      bottomNavigationBar:BottomNavigation(),
    );
  }
}