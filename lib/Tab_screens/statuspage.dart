import 'package:flutter/material.dart';
import 'package:warmapp_clone/datas/status_models.dart';

class screenstatus extends StatelessWidget {
  const screenstatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/myimage.JPEG'),
                      ),
                      Positioned(
                        left: 30,
                        top: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.greenAccent.shade700,
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    "My status",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("tap to add status update"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                child: ListTile(
                  onTap: (() {}),
                  // leading: CircleAvatar(
                  //   radius: 28,
                  //   backgroundColor: Colors.lightBlue.shade600,
                  // ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 0.0, bottom: 1.0, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade200,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    child: Text(
                      "Recent updates",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ),
              ),
              Flexible(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 27,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage:
                                      AssetImage(Statuslists[index].avatar),
                                ),
                              ),
                              title: Text(
                                Statuslists[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle:
                                  Text(Statuslists[index].time.toString()),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 8.0,
                        );
                      },
                      itemCount: Statuslists.length)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blueGrey),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, bottom: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade300),
                      child: Icon(
                        Icons.mode_edit_sharp,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
