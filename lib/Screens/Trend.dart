import 'package:flutter/material.dart';

class TrendScreen extends StatelessWidget {
  const TrendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trend',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trend'),
        ),
      ),
    );
  }
}
