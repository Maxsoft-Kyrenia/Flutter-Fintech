import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notifications',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
      ),
    );
  }
}
