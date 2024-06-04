import "package:flutter/material.dart";

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0), // Agrega padding horizontal
          child: RichText(
            textAlign: TextAlign.justify, // Justifica el texto
            text: const TextSpan(
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
              children: [
                TextSpan(
                  text: "Welcome to Easy Expenses Control!\n\n",
                  style: TextStyle(
                    fontWeight:
                        FontWeight.bold, // Pone en negrita esta parte del texto
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text:
                      "Simplify your daily expense tracking with Easy Expenses Control. Our app focuses on simplicity, allowing you to organize expenses by categories and monitor your spending effortlessly.\n\n",
                ),
                TextSpan(
                  text:
                      "On the expenses manager, you'll find an intuitive menu to manage your expense categories. From groceries to entertainment, customize your categories to fit your lifestyle.\n\n",
                ),
                TextSpan(
                  text:
                      "Once categories are set up, adding expenses is a breeze. Whether it's your morning coffee or last night's dinner, just select the category and record your expense in seconds.\n\n",
                ),
                TextSpan(
                  text:
                      "Take charge of your finances today with Easy Expenses Control. Start tracking your expenses easily and effectively.\n\n",
                ),
                TextSpan(
                  text:
                      "Join us and make managing your expenses a breeze with Easy Expenses Control!",
                  style: TextStyle(
                    fontStyle: FontStyle
                        .italic, // Pone en cursiva esta parte del texto
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
