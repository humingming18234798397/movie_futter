
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_futter/api/apiservice.dart';
import 'package:movie_futter/mymovie.dart';

class KanGuoDeMovie extends StatefulWidget {
  @override
  _KanGuoDeMovie createState() => _KanGuoDeMovie();
}

class _KanGuoDeMovie extends State<KanGuoDeMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141931),
     // backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color(0xff141931),
        //leading: Icon(Icons.arrow_back),
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
        title: Text('看过的电影'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            coming_soon_Widget(),
          ],
        ),
      ),
    );
  }
}

//
class coming_soon_Widget extends StatefulWidget {
  @override
  _coming_State createState() => _coming_State();
}

class _coming_State extends State<coming_soon_Widget> {
  List list;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flexible(
      fit: FlexFit.tight,
      child: FutureBuilder(
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
      ),
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
                style: TextStyle(color: Colors.white),

                /* style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),*/
                textAlign: TextAlign.left),
            new Text(
              "${item["wantSeeNum"]}", style: TextStyle(color: Colors.white),
            )

          ],
        ),
      ],
    );
  }
}
