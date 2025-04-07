import 'package:flutter/material.dart';

void main() {
  runApp(MyColorBoxApp());
}

class MyColorBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  '다음과 같은 화면 만들기',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '화면이 유사하면 됨',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(color: Colors.red),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.black),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.orange),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(color: Colors.yellow),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(color: Colors.yellow),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
