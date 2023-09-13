import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pergunte Qualquer Coisa'),
        backgroundColor: Colors.blue,
      ),
      body: const BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var BallNumber = 2;

  void _rollBall() {
    setState(() {
      BallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: _rollBall,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              child: Image.asset('images/ball$BallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
