import "package:flutter/material.dart";

class MyBottomNavigationBar extends StatefulWidget {
  final Function(int) onIndexChanged;

  const MyBottomNavigationBar({Key? key, required this.onIndexChanged})
      : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        widget.onIndexChanged(index);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_outlined),
            label: 'Expenses Manager'),
        BottomNavigationBarItem(icon: Icon(Icons.assessment), label: 'Stats'),
      ],
    );
  }
}
