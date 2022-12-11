import 'package:flutter/material.dart';
import './edit_page.dart';
import './add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CRUD Application',
          style: TextStyle(
            color: Color.fromARGB(255, 249, 46, 106),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Container(
                      width: width * 0.7,
                      padding: EdgeInsets.all(10.0),
                      child: Text('Ini Datanya'),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditPage()),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      Icon(Icons.delete),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 249, 46, 106),
        mini: true,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPage()),
          );
        },
      ),
    );
  }
}
