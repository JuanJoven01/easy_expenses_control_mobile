import "package:flutter/material.dart";

class ManageCategories extends StatefulWidget {
  const ManageCategories({Key? key}) : super(key: key);

  @override
  _ManageCategoriesState createState() => _ManageCategoriesState();
}

class _ManageCategoriesState extends State<ManageCategories> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return (Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'Enter a new category'),
          )
        ],
      ),
    ));
  }
}
