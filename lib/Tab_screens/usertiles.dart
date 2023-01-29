import 'package:flutter/material.dart';
import 'package:warmapp_clone/datas/chat_models.dart';
import 'package:warmapp_clone/screenpersonal.dart';

class Usertile extends StatefulWidget {
  const Usertile({required this.userdata, Key? key}) : super(key: key);

  final Chat userdata;
  @override
  State<Usertile> createState() => _UsertileState();
}

class _UsertileState extends State<Usertile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(Chatlists[index].avatar),
                      // backgroundImage: AssetImage('assets/images/myimage.JPEG'),
                    ),
                    title: Text(
                      Chatlists[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            screenpersonalchat(data: Chatlists[index]))),
                    subtitle: Text(Chatlists[index].lastmessage),
                    trailing: Column(
                      children: [
                        Text(Chatlists[index].time),
                        SizedBox(
                          height: 12,
                        ),
                        CircleAvatar(
                          child: Center(
                            child: Text(Chatlists[index].count.toString()),
                          ),
                          backgroundColor: Colors.blueGrey,
                          radius: 12,
                        )
                      ],
                    ))
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 10.0,
            );
          },
          itemCount: Chatlists.length,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          backgroundColor: Colors.blueGrey,
          onPressed: (() {}),
        ));
  }
}
