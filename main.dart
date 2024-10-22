import 'package:flutter/material.dart';
import 'package:flutter_projects/messenger_view.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Hello mahmoud 1"),
      //     backgroundColor: Colors.green,
      //     leading: IconButton(
      //         onPressed: onButtonPreesed, icon: Icon(Icons.ice_skating)),
      //   ),
      //   body: Text("Hello mahmoud"),
      // ),
    //  title: "Mahmoudddz",
    );
  }

  void onButtonPreesed() {
    print("Button Clicked");
  }
}
