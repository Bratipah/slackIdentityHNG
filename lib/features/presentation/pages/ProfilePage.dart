import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation/components/bottom_navigation.dart';
import '../widgets/profile/profile_details.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: const Text('Profile Page'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            // height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/2428085.jpg"),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.blue,
                        width: 5
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                  child: Column(
                    children: [
                      Text(
                        "Bratipah",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "bratipahmh@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )
                  ),
                  padding: const EdgeInsets.all(20),
                  height: 500,
                  child:  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ProfileDetails(
                        icon: Icons.person_sharp,
                        title: "My Profile",
                      ),
                      const ProfileDetails(
                        icon: Icons.settings,
                        title: "Set Yourself Away",
                        ),
                      const ProfileDetails(
                        icon: Icons.notifications,
                        title: "Pause Notifications",
                      ),
                      const ProfileDetails(
                        icon: Icons.message_rounded,
                        title: "Preferences",
                      ),
                      const ProfileDetails(
                        icon: Icons.share_sharp,
                        title: "Share",
                      ),
                      const ProfileDetails(
                        icon: Icons.logout,
                        title: "Sign out",
                      ),
                      IconButton(
                          onPressed: () {

                      },
                          icon: const Icon(Icons.ac_unit_outlined, )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}