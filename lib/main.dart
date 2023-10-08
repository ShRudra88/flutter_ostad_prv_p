import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text("Homepage"),
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.pinkAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Your action here
              },
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Your action here
              },
              child: Text('Text Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Your action here
              },
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.add),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.black12,
            )
            /* DropdownButton<String>(
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String newValue) {
                // Handle dropdown selection
              },
            )

            Radio(
              value: selectedValue,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                });
              },
            )

            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            )
            */

          ],
        ),
      )
      );
  }
}
