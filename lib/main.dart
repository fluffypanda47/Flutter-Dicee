import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1, rdn = 1;

  void press() {
    setState(() {
      ldn = Random().nextInt(6) + 1;
      rdn = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                press();
                //print("left button got pressed");
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                // setState(() {
                //   rdn = Random().nextInt(6) + 1;
                //   ldn = Random().nextInt(6) + 1;
                // });
                press();
                //print("Right button got pressed");
              },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
