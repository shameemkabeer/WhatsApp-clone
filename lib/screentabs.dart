import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warmapp_clone/Tab_screens/call.dart';
import 'package:warmapp_clone/Tab_screens/statuspage.dart';
import 'package:warmapp_clone/Tab_screens/usertiles.dart';
import 'package:warmapp_clone/datas/chat_models.dart';

class screenchats extends StatefulWidget {
  const screenchats({
    required this.userdata,
    Key? key,
  }) : super(key: key);

  final Chat userdata;
  @override
  State<screenchats> createState() => _screenchatsState();
}

class _screenchatsState extends State<screenchats>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blueGrey,
            title: Text(
              "WarmApp",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt_outlined)),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                iconSize: 28,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    size: 26,
                  ))
            ],
          ),
          body: new TabBarView(controller: _tabController, children: [
            Tab(child: Text("Camera")),
            Usertile(userdata: Chatlists.first),
            screenstatus(),
            Screencalls(),
          ]),
        ),
      ),
    );
  }
}
