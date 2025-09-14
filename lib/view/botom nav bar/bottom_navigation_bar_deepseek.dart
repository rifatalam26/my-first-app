import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Tab icons
  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.chat,
    Icons.notifications_outlined,
    Icons.person_outlined,
  ];

  // Selected tab icons
  final List<IconData> _selectedIcons = [
    Icons.home,
    Icons.chat,
    Icons.notifications,
    Icons.person,
  ];
  // Tab labels
  final List<String> _labels = ['Home', 'Chart', 'Notification', 'Profile'];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(_icons.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == index ? _selectedIcons[index] : _icons[index],
              size: 24,
            ),
            label: _labels[index],
          );
        }),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}


