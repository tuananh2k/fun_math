import 'package:flutter/material.dart';
import 'package:fun_math/Home/main.dart';

// class PlayScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '',
//       home: Play(),
//     );
//   }
// }


class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  Widget btnResult(String result){
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
      child: FlatButton(
        child: Text(result,
        style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: (){
          Navigator.pop(context);
        },
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        shape: StadiumBorder(),
        color: Colors.lightBlue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        actions: [
          Icon(Icons.favorite,
          color: Colors.blue,)
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            setBackGround(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    btnResult('10+10'),
                    btnResult('2+2'),
                    btnResult('30+30')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

