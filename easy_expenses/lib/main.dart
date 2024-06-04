import 'package:flutter/material.dart';
import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'screens/expenses_manager_screen.dart';
import 'screens/home_screen.dart';
import 'screens/stats_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Easy Expenses Control'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: widget.title,
      ),
      body: Center(
        child: _getBodyWidget(_selectedIndex),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        onIndexChanged: (index) {
          setState(() {
            _selectedIndex = index; // Actualiza el índice seleccionado en MyApp
          });
        },
      ),
    );
  }

  Widget _getBodyWidget(int index) {
    // Devuelve el widget del cuerpo según el índice seleccionado
    switch (index) {
      case 0:
        return const MyHomeScreen();
      case 1:
        return const ExpensesManagerScreen();
      case 2:
        return const StatsScreen();
      default:
        return Container();
    }
  }
}
