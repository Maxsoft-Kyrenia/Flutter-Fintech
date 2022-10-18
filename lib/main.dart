import 'package:Fintech/Screens/Home.dart';
import 'package:Fintech/Screens/Notification.dart';
import 'package:Fintech/Screens/Profile.dart';
import 'package:Fintech/Screens/Swap.dart';
import 'package:Fintech/Screens/Trend.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'BrownBold'),
    routes: {
      '/': (context) => HomeScreen(),
      '/Swap': (context) => SwapScreen(),
      '/Trend': (context) => TrendScreen(),
      'Notifications': (context) => NotificationScreen(),
      '/Profile': (context) => ProfileScreen()
    },
  ));
}
