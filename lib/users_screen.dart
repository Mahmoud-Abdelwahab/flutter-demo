import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
   UsersScreen({super.key});
 List<Users> users = [
   Users(id: 1,
       name: 'Mahmoud abdelwahab',
       phone: '+201149060094'),
   Users(id: 2,
       name: 'Ahmed abdelwahab',
       phone: '+201132423324'),
   Users(id: 3,
       name: 'Abdo abdelwahab',
       phone: '+201143453434'),
   Users(id: 4,
       name: 'Mohamed abdelwahab',
       phone: '+203223423424'),
   Users(id: 1,
       name: 'Mahmoud abdelwahab',
       phone: '+201149060094'),
   Users(id: 2,
       name: 'Ahmed abdelwahab',
       phone: '+201132423324'),
   Users(id: 3,
       name: 'Abdo abdelwahab',
       phone: '+201143453434'),
   Users(id: 4,
       name: 'Mohamed abdelwahab',
       phone: '+234234234232'),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(itemBuilder: (context, index) => buildUserItem(users[index]),
            separatorBuilder: (context, index) => Divider(),
            itemCount: users.length,
        ),
      )
    );
  }

  Widget buildUserItem(Users user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green[300],
          child: Text(
            '${user.id}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( user.name),
            Text( user.phone),
          ],
        )
      ],
    );
  }
}

class Users {
  final int id ;
  final String name;
  final String phone;

  Users({
    required this.id,
    required this.name,
    required this.phone
});
}