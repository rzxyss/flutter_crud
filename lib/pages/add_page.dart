import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Data',
          style: TextStyle(
            color: Color.fromARGB(255, 249, 46, 106),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 249, 46, 106),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: width,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Masukan datanya',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 249, 46, 106),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Add Data'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 249, 46, 106),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
