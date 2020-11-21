import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/chats.dart';
import 'package:whatsapp_clone/status.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075E54),
            title: Text("WhatsApp"),
            centerTitle: false,
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {})
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicatorColor: Colors.white,
                  isScrollable: true,
                  indicatorWeight: 3,
                  tabs: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Icon(
                        Icons.camera_alt,
                        size: 20,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width / 5,
                        child: Center(
                          child: Text(
                            "CHATS",
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width / 5,
                        child: Center(
                          child: Text(
                            "STATUS",
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width / 5,
                        child: Center(
                          child: Text(
                            "CALLS",
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Container(),
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        ));
  }
}
