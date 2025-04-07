import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculatorUI());
}

class MyCalculatorUI extends StatelessWidget {
  final List<String> buttons = [
    '%', 'CE', 'C', '⌫',
    '1/x', 'x²', '√x', '÷',
    '7', '8', '9', '×',
    '4', '5', '6', '−',
    '1', '2', '3', '+',
    '+/−', '0', '.', '='
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 350),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 표시줄
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // 버튼 영역
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      final btnText = buttons[index];
                      return ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: btnText == '='
                              ? Colors.lightBlue
                              : Colors.grey[850],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Text(
                            btnText,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
