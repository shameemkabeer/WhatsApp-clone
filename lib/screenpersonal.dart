import 'package:flutter/material.dart';
import 'package:warmapp_clone/datas/chat_models.dart';

class screenpersonalchat extends StatefulWidget {
  screenpersonalchat({
    required this.data,
    Key? key,
  }) : super(key: key);

  final Chat data;

  @override
  State<screenpersonalchat> createState() => _screenpersonalchatState();
}

class _screenpersonalchatState extends State<screenpersonalchat> {
  TextEditingController textcontroll = TextEditingController();
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
              backgroundImage: AssetImage(widget.data.avatar),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 5)),
                      Text(
                        widget.data.current,
                        style: TextStyle(
                            fontSize: 9.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.white60),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_sharp,
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/whatsappbg2.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 5.0, top: 8.0, bottom: 8.0, right: 6.0),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.05,
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 5,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: TextField(
                          controller: textcontroll,
                          cursorColor: Colors.teal,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type a messege...',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 18,
                              )),
                        ),
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey.shade500,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      textcontroll.text.trim() == "" ||
                              textcontroll.text == null
                          ? Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.grey.shade500,
                              size: 18,
                            )
                          : Container(),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 20,
                  child: textcontroll.text.trim() == "" ||
                          textcontroll.text == null
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ))
                      : IconButton(
                          onPressed: () {
                            textcontroll.clear();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.send,
                            color: Colors.white,
                          )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textcontroll.dispose();
    super.dispose();
  }
}
