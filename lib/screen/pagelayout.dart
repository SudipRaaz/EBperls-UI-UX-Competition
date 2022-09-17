import 'package:flutter/material.dart';

import 'package:itmeet/screen/About.dart';
import 'package:itmeet/screen/contact.dart';
import 'package:itmeet/screen/homee.dart';
import 'package:itmeet/screen/project.dart';
import 'package:itmeet/screen/team.dart';
import 'package:itmeet/tabmanager.dart';
import 'package:provider/provider.dart';

import '../phase3/contact.dart';

class PageLayout extends StatelessWidget {
  PageLayout({super.key});

  List pages = [
    Home(),
    Project(),
    About(),
    Team(),
    Contacts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
          body: pages[tabManager.selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabManager.selectedTab,
            //change the body based on the index of the bottom navigation tap
            onTap: (index) {
              tabManager.goToTab(index);
            },

            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Color(0xff292A3B),
                icon: const Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xff292A3B),
                icon: const Icon(Icons.web_stories),
                label: 'Projects',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xff292A3B),
                icon: const Icon(Icons.person),
                label: 'About Us',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xff292A3B),
                icon: const Icon(Icons.people),
                label: 'Our Team',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xff292A3B),
                icon: const Icon(Icons.contact_page),
                label: 'Contact',
              ),
            ],
          ));
    });
  }
}
