import 'package:flutter/material.dart';

//void main() => runApp(SplashPage());
class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Image.asset(
          'images/yindaoye.png',
          height: 800,
        ),
      ],
    );
  }


}
