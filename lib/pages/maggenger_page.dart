import 'package:flutter/material.dart';
import 'package:tsksession/widgets/custom_chat.dart';
import 'package:tsksession/widgets/custom_circle_image.dart';
import 'package:tsksession/widgets/custom_status.dart';
import 'package:tsksession/Data/Users.dart';
import 'package:tsksession/widgets/custom_textfield.dart';

class MassengerApp extends StatefulWidget {
  const MassengerApp({super.key});

  @override
  State<MassengerApp> createState() => _MassengerAppState();
}

class _MassengerAppState extends State<MassengerApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 61, 58, 58),
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: "Groups",
            icon: Icon(Icons.group),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
       leading: CircleAvatar(
          backgroundColor: Color.fromARGB(182, 99, 99, 99),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text("Chats",style: TextStyle(color: Colors.white),),
         actions: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(182, 99, 99, 99),
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          )
        ],
      ),
      body:
       Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextFild(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0,top:16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     Status(
                          image: Icon(
                            Icons.add_sharp,color: Colors.white,
                          ),
                          name: "Story"),
                      Status(
                         image: CirclAvatar(
                            image: "assets/images/IMG.jpg",
                          ),
                          name: "Poles"),
                      Status(
                         image: CirclAvatar(
                            image:"assets/images/male.jpg",
                          ),
                          name: "bebo"),
                      Status(
                         image: CirclAvatar(
                            image:"assets/images/female.jpg",
                          ),
                          name: "mohra"), 
                      Status(
                          image: CirclAvatar(
                            image: "assets/images/male.jpg",
                          ),
                          name: "Hana"),
                      Status(
                          image: CirclAvatar(
                            image: "assets/images/male.jpg",
                          ),
                          name: "Ali"),
                      Status(
                          image: CirclAvatar(
                           image: "assets/images/male.jpg",
                          ),
                          name: "Ahmed"),
                      Status(
                         image: CirclAvatar(
                            image:"assets/images/female.jpg",
                          ),
                          name: "mohra"),
                      Status(
                         image: CirclAvatar(
                            image:"assets/images/male.jpg",
                          ),
                          name: "Poles"),
                      Status(
                         image: CirclAvatar(
                            image:"assets/images/male.jpg",
                          ),
                          name: "Poles"),
                    ],
                  ),
                ),
              ), 
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ChatField(
                        image: user_image[index],
                        name: user_names[index],
                        chatText: "My name is poles youssif hana.......... ");
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 16), 
            ],
          ),
        ),
      ),
    );
  }
}


