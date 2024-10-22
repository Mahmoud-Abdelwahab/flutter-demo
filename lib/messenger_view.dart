import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://example.com/your-image-url.jpg'), // Replace with your image URL radius:20.0, // Adjust radius as needed ),
        ),
        title:  IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit),
        ),
      ),
      body: Scaffold(),
    );
  }
}
