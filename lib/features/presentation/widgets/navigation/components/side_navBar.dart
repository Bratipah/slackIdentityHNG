import 'package:flutter/material.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("Johndoe@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/2428085.jpg")),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.search_sharp),
            title: const Text('Search'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.library_books_sharp),
            title: const Text('Library'),
            onTap: () {},
          ),
          const Padding(padding: EdgeInsets.all(143.0)),
          ListTile(
            leading: const Icon(Icons.message_sharp),
            title: const Text('Text Us'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call_sharp),
            title: const Text('Call Us'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.mail_sharp),
            title: const Text('Email Us'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}