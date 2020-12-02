import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fun Math',
      home: FunMath(),
    );
  }
}

class FunMath extends StatefulWidget {
  @override
  _FunMathState createState() => _FunMathState();
}

Widget setBackGround() {
  return Expanded(
    child: FlareActor(
      'assets/backgroundBubble.flr',
      alignment: Alignment.center,
      fit: BoxFit.contain,
      animation: 'bg_repeat',
    ),
  );
}

Widget btn(String path) {
  return Container(
    margin: EdgeInsets.all(5),
    height: 75,
    width: 75,
    child: RaisedButton(
      color: Colors.blue,
      child: Image(
        image: AssetImage(
          path,
        ),
        height: 40,
        width: 40,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(20),
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}

Widget btnPlay(String path) {
  return Container(
    margin: EdgeInsets.all(10),
     alignment: Alignment.center,
    padding: EdgeInsets.only(left: 30),
    // height: 85,
    // width: 380,
    child: RaisedButton(
      color: Colors.blue,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image(
          image: AssetImage(
            path,
          ),
          height: 40,
          //set kich thuoc cho image
          width: 40,
          color: Colors.white,
        ),
        Text(' PLAY',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white)),
      ]),
      onPressed: () {},
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}

class _FunMathState extends State<FunMath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Stack(
            // cho ghi đè lên
            children: [
              setBackGround(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 80),
                        child: Text(
                          'Fun Math',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              btn('assets/icon/star.png'),
                              btn('assets/icon/medal.png'),
                              btn('assets/icon/crown.png'),
                            ],
                          ),
                          Row(
                            children: [btnPlay('assets/icon/play.png')],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              btn('assets/icon/setting.png'),
                              btn('assets/icon/speaker2.png'),
                              btn('assets/icon/noAds.png'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
            //overflow: Overflow.clip,
          ),
        ));
  }
}
