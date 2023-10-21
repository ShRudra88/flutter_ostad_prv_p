import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add action for ElevatedButton
              },
              child: Text('ElevatedButton'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Add action for TextButton
              },
              child: Text('TextButton'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Add action for OutlinedButton
              },
              child: Text('OutlinedButton'),
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Add action for IconButton
              },
            ),
          ],
        ),
      ),
    );
  }
}
