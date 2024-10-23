import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Row(
         children: [
           CircleAvatar(
             radius: 20,
             backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/17813115?v=4"),
           ),
           SizedBox(
             width: 10,
           ),
           Text("Chats",
             style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
         ],
       ),
        actions: [
          IconButton(onPressed: (){},
              icon: const CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 16,
                child: Icon(Icons.camera),
              )),
          IconButton(onPressed: (){},
              icon: const CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 16,
                child: Icon(Icons.edit),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                debugPrint("Search Tapped.");
              },
              child: Container(
                padding: EdgeInsets.all(7),
               decoration: BoxDecoration(
                 color: Colors.grey[300],
                 borderRadius: BorderRadius.circular(5.0),
               ),
               child: const Row(
                 children: [
                   Icon(Icons.search),
                   Text('Search'),
                 ],
               ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
