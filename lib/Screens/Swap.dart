import 'package:flutter/material.dart';

class SwapScreen extends StatelessWidget {
  const SwapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swap',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Swap'),
        ),
      ),
    );
  }
}
