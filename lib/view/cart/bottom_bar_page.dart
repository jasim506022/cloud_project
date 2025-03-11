import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Page Content
          Center(child: Text("Selected Page: $_currentIndex")),

          // Extra Items BELOW Bottom Bar
          Positioned(
            bottom: 0, // Appears at the bottom of the screen
            left: 0,
            right: 0,
            child: Visibility(
              visible: _isExpanded,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _extraItem(Icons.settings, "Settings"),
                    _extraItem(Icons.notifications, "Alerts"),
                    _extraItem(Icons.help, "Help"),
                  ],
                ),
              ),
            ),
          ),

          // Main Bottom Navigation Bar
          Positioned(
            bottom:
                _isExpanded ? 60 : 0, // Pushes ConvexAppBar up when expanded
            left: 0,
            right: 0,
            child: ConvexAppBar(
              style: TabStyle.reactCircle,
              items: [
                TabItem(icon: Icons.home, title: "Home"),
                TabItem(icon: Icons.search, title: "Search"),
                TabItem(icon: Icons.add_circle, title: ""), // Middle Button
                TabItem(icon: Icons.favorite, title: "Favorites"),
                TabItem(icon: Icons.person, title: "Profile"),
              ],
              initialActiveIndex: _currentIndex,
              onTap: (index) {
                if (index == 2) {
                  setState(() => _isExpanded = !_isExpanded);
                } else {
                  setState(() {
                    _currentIndex = index;
                    _isExpanded = false;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _extraItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 28, color: Colors.blue),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }
}
