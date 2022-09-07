import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olx_iete/screens/sections/home_section.dart';
import 'package:olx_iete/screens/sections/messages_section.dart';
import 'package:olx_iete/screens/sections/more_section.dart';
import 'package:olx_iete/screens/sections/search_section.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  late int current;
  @override
  void initState() {
    super.initState();
    current = 0;
  }

  List<Widget> destinations = const [
    HomeSection(),
    SearchSection(),
    MessageSectin(),
    MoreSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: current,
        onDestinationSelected: (index) {
          setState(() {
            current = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz_rounded),
            label: "",
          ),
        ],
      ),
      body: IndexedStack(
        children: destinations,
        index: current,
      ),
    );
  }
}
