import 'package:flutter/material.dart';
import 'package:flutter_projects/messenger_view.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerView(),
    );
  }
}
