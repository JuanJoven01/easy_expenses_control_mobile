import 'package:easy_expenses/widgets/manage_categories.dart';
import "package:flutter/material.dart";

class ExpensesManagerScreen extends StatefulWidget {
  const ExpensesManagerScreen({Key? key}) : super(key: key);

  @override
  _ExpensesManagerScreenState createState() => _ExpensesManagerScreenState();
}

class _ExpensesManagerScreenState extends State<ExpensesManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return (const Scaffold(
      body: Center(
        child: ManageCategories(),
      ),
    ));
  }
}
