import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    print('FirstPage: initState');
  }

  @override
  void dispose() {
    print('FirstPage: dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('FirstPage: build');
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
    print('SecondPage: initState');
  }

  @override
  void dispose() {
    print('SecondPage: dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('SecondPage: build');
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
