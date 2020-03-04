

import 'package:flutter/material.dart';

class BanBen extends StatefulWidget {
  @override
  _BanBenState createState() => _BanBenState();
}

class _BanBenState extends State<BanBen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('最新版本'),
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            gengxintupian(),
            Text("最新版本",style: TextStyle(color: Colors.white),),
            Text("v2.0",style: TextStyle(color: Colors.white),),
            gengxin(),

          ],
        )

      )
    );
  }
}

//立即更新
class gengxintupian extends StatefulWidget {
  @override
  _gengxintupian createState() => _gengxintupian();
}
class _gengxintupian extends State<gengxintupian> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 50,bottom: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/gengxin.png',
              width: 100,
              height: 100,
              //适应
              //   fit:BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

//立即更新
class gengxin extends StatefulWidget {
  @override
  _gengxin createState() => _gengxin();
}
class _gengxin extends State<gengxin> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: 160,
      height: 30,
      //padding: EdgeInsets.only(left: 20,top: 20),
      child: RaisedButton(
        onPressed:(){},
        color: Colors.red,
        child: Text('立即更新',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
