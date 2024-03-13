import 'package:flutter/material.dart';

void main() {
  runApp(page2());
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decrement Button',
      home: DecrementScreen(),
    );
  }
}

class DecrementScreen extends StatefulWidget {
  @override
  _DecrementScreenState createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen> {
  int _number = 10; // Initial value

  void _decrementNumber() {
    if (_number > 0) {
      setState(() {
        // Decrement the number by 1
        _number -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decrement Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Number: $_number',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _decrementNumber,
              child: Text('Decrement'),
              style: ElevatedButton.styleFrom(
                // Disable the button when _number is 0
                backgroundColor: _number == 0 ? Colors.grey : Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
