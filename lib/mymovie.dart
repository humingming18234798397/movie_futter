import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Setting extends StatefulWidget {
  @override
  _My_SettingState createState() => _My_SettingState();
}

class _My_SettingState extends State<My_Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: new Icon(Icons.arrow_back),
     //   backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('我的'),
      ),
      body: ListView(

        children: <Widget>[
          touxiang,
          moviepiao,
          buttonWidget,
          buttonWidgets,
          buttonWidgetss,

        ],
      ),

    );
  }
}
//touxian头像
Widget touxiang = new Container(

  margin: EdgeInsets.only(top: 10),
  padding: EdgeInsets.only(left: 20,top: 20),
  child:new Row(

    //孩子们
    children: <Widget>[

      CircleAvatar(
        //头像半径
        radius: 30,
        //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
        backgroundImage:AssetImage('images/beiying.jpg',)
      ),
      /*Image.asset('images/beiying.jpg',
        width: 80,
        height: 80,
        //适应
        //   fit:BoxFit.cover,
      ),*/
      Padding(
        padding:EdgeInsets.only(left: 20),
        child:Row(
          children: <Widget>[
            Text('我的昵称',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 200),child:
            Image.asset('images/back.png',
              width: 10,
              height: 20,
              //适应
              //   fit:BoxFit.cover,
            ),
            )

          ],
        ),
      ),
    ],
  ),
);



//电影票
Widget moviepiao = new Container(

  margin: EdgeInsets.only(top: 10),
  padding: EdgeInsets.only(left: 20,top: 20),
  child:new Row(

    //孩子们
    children: <Widget>[
      Image.asset('images/wodedianyingpiao.png',
        width: 40,
        height: 50,
        //适应
        //   fit:BoxFit.cover,
      ),
  Padding(

    padding:EdgeInsets.only(left: 20),
    child:Row(
      children: <Widget>[
        Text('电影票',
        style: TextStyle(
          color: Colors.white70,
        ),
        ),
        Padding(padding: EdgeInsets.only(left: 200),child:
        Image.asset('images/back.png',
          width: 10,
          height: 20,
          //适应
          //   fit:BoxFit.cover,
        ),
          )

      ],
    ),
  ),
    ],
  ),

);


//diyihang第一行
Widget buttonWidget = new Container(

  margin: EdgeInsets.only(top: 10),
  //三列
  child:new Row(
    //用MainAxisAlignment.spaceEvenly平均分配子空间
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //孩子们
    children: <Widget>[
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/group_2.png',
              width: 40,
              height: 50,
              //适应
              //   fit:BoxFit.cover,
            ),
            Text('我的关注',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/wodeyuyue.png',
              width: 40,
              height: 50,
              //适应
              //   fit:BoxFit.cover,
            ),
            Text('我的预约',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/chongzhijilu.png',
              width: 40,
              height: 50,
            ),
            Text('购买记录',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
    ],
  ),
);
//diyihang第二行
Widget buttonWidgets = new Container(
  margin: EdgeInsets.only(top: 10),
  //三列
  child:new Row(
    //用MainAxisAlignment.spaceEvenly平均分配子空间
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //孩子们
    children: <Widget>[
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/duihao.png',
              width: 40,
              height: 50,
              //适应
              //   fit:BoxFit.cover,
            ),
            Text('看过的电影',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/pinglun.png',
              width: 40,
              height: 50,
              //适应
              //   fit:BoxFit.cover,
            ),
            Text('我的评论',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/yijianfankui_01.png',
              width: 40,
              height: 50,
            ),
            Text('意见反馈',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
    ],
  ),
);
//diyihang第三行
Widget buttonWidgetss = new Container(
  margin: EdgeInsets.only(top: 10),
  //三列
  child:new Row(
    //用MainAxisAlignment.spaceEvenly平均分配子空间
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //孩子们
    children: <Widget>[
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('images/invalid_name.png',
              width: 40,
              height: 50,
              //适应
              //   fit:BoxFit.cover,
            ),
            Text('设置',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],

        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('',
              width: 40,
              height: 50,
              //适应
              //   fit:BoxFit.cover,
            ),
            Text(''),
          ],

        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset('',
              width: 40,
              height: 50,
            ),
            Text(''),
          ],

        ),
      ),
    ],
  ),
);


