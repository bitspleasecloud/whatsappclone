import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const randomNames = [
  "Namita Amble",
  "Pinky Ramesh",
  "Abbas Sekhon",
  "Devendra Acharya",
  "Jatin Rao Dubey",
  "Kiran Pingle",
  "Pirzada Dev Patel",
  "Bagwati Anand Mitter",
  "Shweta Yash Kapadia",
  "Kalyani Sandal",
  "Devika Zeeshan Pau",
  "Suresh Patel",
  "Jamshed Rao Babu",
  "Vicky Raman",
  "Padama Naseer Deep",
  "Poonam Hanuman Dass",
  "Kasturi Master",
  "Rupal Devi",
  "Devika Pradeep Ghose",
  "Zahir Jayaraman"
];

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 40.0,
                    backgroundImage: CachedNetworkImageProvider(
                      "https://i.pravatar.cc/150?img=${index}",
                    )),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 5.0),
                            child: Text(
                              randomNames[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, right: 15.0),
                          child: Text(
                            "3:24 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14.0),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                      child: Text(
                        "Hey there! Whats the plan for today?",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color(0xffb3aead)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.15),
          ),
        );
      },
    );
  }
}
