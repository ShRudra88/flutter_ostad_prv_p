import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetectorDemo(),
    );
  }
}

class GestureDetectorDemo extends StatefulWidget {
  @override
  _GestureDetectorDemoState createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  Color _containerColor = Colors.blue;
  bool _isBlue = true;

  void _toggleColor() {
    setState(() {
      _containerColor = _isBlue ? Colors.green : Colors.blue;
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleColor, // Call _toggleColor() when tapped
          child: Container(
            width: 200.0,
            height: 200.0,
            color: _containerColor, // Toggle between blue and green
            child: Center(
              child: Text(
                'Tap Me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
