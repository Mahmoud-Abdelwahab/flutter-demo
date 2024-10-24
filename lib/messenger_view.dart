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
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/17813115?v=4"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 16,
                child: Icon(Icons.camera),
              )),
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 16,
                child: Icon(Icons.edit),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          bottom: 20,
          start: 20,
          end: 20,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  debugPrint("Search Tapped.");
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
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
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 10),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 60,
        child: const Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/17813115?v=4"),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    end: 3,
                    bottom: 3,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Mahmoud abdelwahab',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/17813115?v=4"),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 3,
                  bottom: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mahmoud Abdulwahab',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'Okay i will be there ffdfsdfsdfsfddsf',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 5),
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('02:30 PM'),
                  ],
                ),
              ],
            ),
          )
        ],
      );
}
