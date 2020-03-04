
import 'package:flutter/material.dart';
import 'package:movie_futter/eventbus/event_util.dart';


class EventBusDemo extends StatefulWidget {
  @override
  _EventBusDemoState createState() => _EventBusDemoState();
}

class _EventBusDemoState extends State<EventBusDemo> {
  StreamSubscription<PageEvent> sss;
  String str=null;
  @override
  void initState() {
    super.initState();
    sss=EventBusUtil.getInstance().on<PageEvent>().listen((data) {
            str = data.test;
      print(str);
      sss.cancel();
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(

        children: <Widget>[

            Text("111111111111111"),
          Text("2222222222222222"),
          Text("333333333333333333"),
          Text("444444444444444444444"),
          Text("555555555555555555555"),
         // Text("123"+str),


        ],
      ),
    );
  }
}