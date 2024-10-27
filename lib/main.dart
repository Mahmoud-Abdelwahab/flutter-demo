import 'package:flutter/material.dart';
import 'package:flutter_projects/bmi_screen.dart';
import 'package:flutter_projects/counter_screen.dart';
import 'package:flutter_projects/messenger_view.dart';
import 'package:flutter_projects/users_screen.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
