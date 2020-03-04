import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as client;
import 'package:movie_futter/api/apiservice.dart';
import 'package:movie_futter/yingyuanxiangqing.dart';
import 'dart:convert'; //使用 json 解析
import 'bean/remenmovie_entity.dart';//解码和编码JSON

class Cinema extends StatefulWidget {
  @override
  _CinemaState createState() => _CinemaState();
}

class _CinemaState extends State<Cinema> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff141931),
        appBar: AppBar(
          backgroundColor: Color(0xff141931),
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  ///TabBar布局
                  tabs: <Widget>[
                    Tab(text: "推荐影院"),
                    Tab(text: "附近影院"),
                    Tab(text: "海淀区"),
                  ],
                ),
              )
            ],
          ),

          ///设置标题居中
          centerTitle: true,
        ),
        body: Tabs(),
      ),
    );
    return Column(
      children: <Widget>[],
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
    return new TabBarView(
      children: <Widget>[
        _movie_Cinema(),
        _nearby_cinema(),
        _region_cinema(),
      ],
    );
  }
}

//推荐影院
class _movie_Cinema extends StatefulWidget {
  @override
  _movie_CinemaWidget createState() => _movie_CinemaWidget();
}

class _movie_CinemaWidget extends State<_movie_Cinema> {
  List list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
      return GestureDetector(
         child: Card(
            color: Color(0xff1c2243),
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: _item(item),
            ),
            elevation: 3.0,
            //  margin: const EdgeInsets.all(10.0),
          ),
        onTap: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => YingYuanXiangQing(text: "${item["id"]}",)));
        },
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
              style: TextStyle(color: Colors.white),
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
//附近影院
class _nearby_cinema extends StatefulWidget {
  @override
  _nearby_cinemawidget createState() => _nearby_cinemawidget();
}

class _nearby_cinemawidget extends State<_nearby_cinema> {
  List list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // get_Data();
  }

 /* get_Data() async {
    client
        .get(
        "http://mobile.bwstudent.com/movieApi/cinema/v1/findNearbyCinemas?page=1&&count=10")
        .then((client.Response response) {
      var data = json.decode(response.body);
      data = data["result"];
      //打印请求的结果
      print(data);
      print('打印信息');
      //更新数据
      setState(() {
        list = data;
      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      FutureBuilder(
        future: get_FuJin(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var data=json.decode(snapshot.data.toString());
            data=data["result"];
            //打印请求的结果
            print(data);
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


    /*ListView(
      children: _getItem(),
    );*/
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

            Text("${item["name"]}".trim(),
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,

                ),
                textAlign: TextAlign.right),
             Text(
              "${item["address"]}",
               style: TextStyle(color: Colors.white),
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

//查询区域ID 海淀区
class _region_cinema extends StatefulWidget {
  @override
  _region_cinemawidget createState() => _region_cinemawidget();
}

class _region_cinemawidget extends State<_region_cinema> {
  List list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //get_Data();
  }


  /*get_Data() async {
    client
        .get("http://mobile.bwstudent.com/movieApi/tool/v2/findRegionList")
        .then((client.Response response) {
      var data = json.decode(response.body);
      data = data["result"];
      //打印请求的结果
      print(data);
      print('打印信息');
      //更新数据
      setState(() {
        list = data;
      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      FutureBuilder(
        future: get_HaiDianQu(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var data=json.decode(snapshot.data.toString());
            data=data["result"];
            //打印请求的结果
            print(data);
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

   /*   ListView(
      children: _getItem(),
    );*/
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
       // margin: const EdgeInsets.all(10.0),
      );
    }).toList();
  }

  Widget _item(item) {
    return new Stack(
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Text("${item["regionName"]}".trim(),
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left),
          ],
        ),
      ],
    );
  }
}

