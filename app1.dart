import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter Value:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Icon(Icons.remove),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                      elevation: 4,
                    ),
                  ),
                  SizedBox(width: 40),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                      elevation: 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
