import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../pages/GithubPage.dart';
import '../../../pages/ProfilePage.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 3,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // IconButton(
          // icon: Icon(Icons.home_sharp),
          // onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
          // },
          // ),
          Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.account_circle_sharp),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              )),
          IconButton(
            icon: const Icon(Icons.code_sharp),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => GithubPage()));
            },
          ),
          IconButton(
              icon: const Icon(Icons.person_sharp),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
              }
          )
        ],
      ),
    );
  }
}
