
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_futter/api/apiservice.dart';


class GouPiaoJiLu extends StatefulWidget {
  @override
  _goupiaojilu createState() => _goupiaojilu();
}

class _goupiaojilu extends State<GouPiaoJiLu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:Scaffold(
        backgroundColor: Color(0xff141931),
        appBar: AppBar(
          backgroundColor: Color(0xff141931),
          leading: Builder(builder: (context) {
            return IconButton(
              // icon: Icon(Icons.list, color: Colors.white),
              icon:Icon(Icons.arrow_back),
              onPressed: () {
                // 返回
                Navigator.of(context).pop();
              },
            );
          }),
          //   backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('购票记录'),
          bottom: TabBar(
            ///TabBar布局
            tabs: <Widget>[
              Tab(text: "待付款"),
              Tab(text: "已付款"),
            ],
          ),
        ),
        body:Tabs(),
      ),
    );
  }
}
class Tabs extends StatefulWidget {
  @override
  TabsWidget createState() => TabsWidget();
}
class TabsWidget extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabBarView(
      children: <Widget>[
       // daifukuan(),
       // yifukuan(),
        coming_soon_Widget(),
        _movie_Cinema(),
      ],
    );
  }
}
//待付款
/*class daifukuan extends StatefulWidget{
  @override
  _daifukuan createState() => new _daifukuan();
}
class _daifukuan extends State<daifukuan>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}*/

//已付款
/*
class yifukuan extends StatefulWidget{
  @override
  _yifukuan createState() => new _yifukuan();
}
class _yifukuan extends State<yifukuan>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}*/

//电影
class coming_soon_Widget extends StatefulWidget {
  @override
  _coming_State createState() => _coming_State();
}

class _coming_State extends State<coming_soon_Widget> {
  List list;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      FutureBuilder(
        future: get_Data2(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var data=json.decode(snapshot.data.toString());
            data=data["result"];
            list = data;
            return ListView(
              children: _getItem(),
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
  }

  List<Widget> _getItem() {
    return list.map((item) {
      return new Card(
        color: Color(0xff1c2243),
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: _item(item),
        ),
        elevation: 3.0,
        //  margin: const EdgeInsets.all(10.0),
      );
    }).toList();
  }

  Widget _item(item) {
    return new Row(
      children: <Widget>[
        new Center(
          child: new FadeInImage.assetNetwork(
            placeholder: "images/jc.jpg",
            image: "${item['imageUrl']}",
            width: 120.0,
            height: 120.0,
          ),
        ),
        new Column(
          children: <Widget>[
            new Text("${item["name"]}".trim(),
                style: new TextStyle(
                  color: Colors.white,
                ),
                /* style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),*/
                textAlign: TextAlign.left),
            new Text(
              "${item["wantSeeNum"]}",
              style: new TextStyle(
                color: Colors.white,
              ),
            )

          ],
        ),
      ],
    );
  }
}
//电影
class _movie_Cinema extends StatefulWidget {
  @override
  _coming_States createState() => _coming_States();
}

class _coming_States extends State<_movie_Cinema> {
  List list;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      FutureBuilder(
        future: get_Data1(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var data=json.decode(snapshot.data.toString());
            data=data["result"];
            list = data;
            return ListView(
              children: _getItem(),
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
  }

  List<Widget> _getItem() {
    return list.map((item) {
      return new Card(
        color: Color(0xff1c2243),
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: _item(item),
        ),
        elevation: 3.0,
        //  margin: const EdgeInsets.all(10.0),
      );
    }).toList();
  }

  Widget _item(item) {
    return new Row(
      children: <Widget>[
        new Center(
          child: new FadeInImage.assetNetwork(
            placeholder: "images/jc.jpg",
            image: "${item['imageUrl']}",
            width: 120.0,
            height: 120.0,
          ),
        ),
        new Column(
          children: <Widget>[
            new Text("${item["name"]}".trim(),
                style: new TextStyle(
                  color: Colors.white,
                ),
                /* style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),*/
                textAlign: TextAlign.left),
           /* new Text(
              "${item["wantSeeNum"]}",
              style: new TextStyle(
                color: Colors.white,
              ),
            )*/

          ],
        ),
      ],
    );
  }
}