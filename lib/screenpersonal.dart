import 'package:flutter/material.dart';
import 'package:warmapp_clone/datas/chat_models.dart';

class screenpersonalchat extends StatelessWidget {
  screenpersonalchat({
    required this.data,
    Key? key,
  }) : super(key: key);

  final Chat data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -2,
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: true,
        leading: Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back)),
            ],
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(data.avatar),
            ),
            SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Online",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
