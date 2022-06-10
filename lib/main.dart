import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ran = 1;
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(child: FlatButton(
          onPressed:(){
            setState((){
              ran = Random().nextInt(5)+1;
            });
          } ,
          child: Image(image: AssetImage('images/ball$ran.png'),
          ),
      ),
      ),
    );
  }
}


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}
