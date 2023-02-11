import 'package:flutter/material.dart';
import 'package:warmapp_clone/datas/chat_models.dart';
import 'package:warmapp_clone/screentabs.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({Key? key}) : super(key: key);

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() {
    loginscreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Expanded(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Image.asset(
                    // "assets/images/icons8-whatsapp-100(-xhdpi).png",
                    "assets/images/whatsapp.png",
                    height: 100.0,
                    width: 100.0,
                  ),
                  SizedBox(
                    height: 350,
                  ),
                  Text(
                    "from",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    "Shameem Kabeer",
                    style: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loginscreen() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screenchats(userdata: Chatlists.first),
      ),
    );
  }
}
