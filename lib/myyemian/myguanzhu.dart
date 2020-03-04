
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_futter/api/apiservice.dart';


class MyGuanZhu extends StatefulWidget {
  @override
  _myguanzhu createState() => _myguanzhu();
}

class _myguanzhu extends State<MyGuanZhu> {
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
            title: Text('我的关注'),
            bottom: TabBar(
              ///TabBar布局
              tabs: <Widget>[
                Tab(text: "电影"),
                Tab(text: "影院"),
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
        coming_soon_Widget(),
        _movie_Cinema(),
      ],
    );
  }
}
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
//影院
class _movie_Cinema extends StatefulWidget {
  @override
  _movie_CinemaWidget createState() => _movie_CinemaWidget();
}

class _movie_CinemaWidget extends State<_movie_Cinema> {
  List list;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      FutureBuilder(
        future: get_TuiJian(),
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
            image: "${item['logo']}",
            width: 120.0,
            height: 120.0,
          ),
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            new Text("${item["name"]}".trim(),

                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.start),
            new Text(
              "${item["address"]}",
              style: new TextStyle(
                color: Colors.white,
              ),
              //显示行数
              maxLines: 1,
              //文字溢出
              overflow: TextOverflow.ellipsis,
              //文字大小
              textScaleFactor: 1.0,
            )
          ],
        ),
      ],
    );
  }
}