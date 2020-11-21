import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white24,
                        backgroundImage: CachedNetworkImageProvider(
                          "https://i.pravatar.cc/150?img=30",
                        )),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.green),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            "My Status",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Text(
                        "Tap to add status update",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xffb3aead)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 40.0,
          color: Colors.grey.withOpacity(0.4),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0),
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff8f8f8f),
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(33)),
                  child: Center(
                    child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white24,
                        backgroundImage: CachedNetworkImageProvider(
                          "https://i.pravatar.cc/150?img=26",
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            "Anchal Garg",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Text(
                        "1 hour ago",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xffb3aead)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(33)),
                  child: Center(
                    child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white24,
                        backgroundImage: CachedNetworkImageProvider(
                          "https://i.pravatar.cc/150?img=2",
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            "Anurag",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Text(
                        "2 hours ago",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xffb3aead)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
