import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentTab = 0;

  final List<BottonNavItem> _bottomNavItems = [
    BottonNavItem(
      label: 'Balance',
      icon: Icons.wallet_outlined,
    ),

    BottonNavItem(
      label: 'Pay',
      icon: Icons.credit_card_rounded,
    ),
    
    BottonNavItem(
      label: 'Send',
      icon: Icons.send_outlined,
    ),
    
    BottonNavItem(
      label: 'History',
      icon: Icons.history,
    ),
    
    BottonNavItem(
      label: 'More',
      icon: Icons.more_horiz_outlined,
    ),
  ];


  void onBottomNavTap(int index){
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: onBottomNavTap,
        fixedColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          for(var nav in _bottomNavItems)
            BottomNavigationBarItem(
              label: nav.label,
              icon: Icon(nav.icon),

            ),
        ],
      ),
    );
  }
}

class BottonNavItem{
  BottonNavItem({required this.label, required this.icon});
  final String label;
  final IconData icon;
}