import 'package:flutter/material.dart';
import 'package:flutter_crud/pages/home_page.dart';

void main() {
  runApp(CrudApp());
}

class CrudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD Application',
      home: HomePage(),
    );
  }
}
