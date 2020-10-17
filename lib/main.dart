import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:HealthTrackAppUi/coolors.dart';
import 'goals_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: blueish,
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Goals_Page(),
    );
  }
}