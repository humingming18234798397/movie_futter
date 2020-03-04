
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_futter/Login.dart';
import 'package:movie_futter/home/homehttps.dart';
import 'package:movie_futter/myyemian/kanguodemoive.dart';
import 'package:movie_futter/myyemian/myyuyue.dart';
import 'package:movie_futter/myyemian/goupiaojilu.dart';
import 'package:movie_futter/myyemian/myguanzhu.dart';
import 'package:movie_futter/myyemian/mypinglun.dart';
import 'package:movie_futter/myyemian/mysetting.dart';
import 'package:movie_futter/myyemian/myuser.dart';
import 'package:movie_futter/myyemian/yijianfankui.dart';

class My_Setting extends StatefulWidget {
  @override
  _My_SettingState createState() => _My_SettingState();
}

class _My_SettingState extends State<My_Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.blue,
      backgroundColor: Color(0xff141931),
      appBar: AppBar(
        backgroundColor: Color(0xff141931),
     //   backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('我的'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.email,color: Colors.white,),
              onPressed: () {
                /* Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyHomeList();
                  }
                  )
              );*/
              }
          ),
        ],
      ),
      body: ListView(

        children: <Widget>[
          touxiang(),
          moviepiao(),
          buttonWidget(),
          buttonWidgets(),
          buttonWidgetss(),

        ],
      ),

    );
  }
}
//touxian头像
class touxiang extends StatefulWidget {
  @override
  _touxiang createState() => _touxiang();
}
class _touxiang extends State<touxiang> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     // color: Color(0xff1c2243),
      color: Colors.white,
      //设置外边距
      height: 100,
      margin: EdgeInsets.only(left:30,top: 20,right: 30),
      padding: EdgeInsets.only(left: 20,top: 20),
      child:new Row(

        //孩子们
        children: <Widget>[
           GestureDetector(
             //圆头像
             child: CircleAvatar(
               //头像半径
                 radius: 30,
                 //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                 backgroundImage:AssetImage('images/beiying.jpg',
                 )
             ),
             onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return Login_Widget();
                  }
                  )
              );
             },
           ),
          GestureDetector(
            child: Padding(
              padding:EdgeInsets.only(left: 20),
              child:Row(
                children: <Widget>[
                  Text('蜕变'),
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
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyUser();
                  }
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}


//电影票
class moviepiao extends StatefulWidget {
  @override
  _moviepiao createState() => _moviepiao();
}
class _moviepiao extends State<moviepiao> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
         color: Color(0xff1c2243),
        //设置外边距
        height: 60,
        margin: EdgeInsets.only(left:30,top: 10,right: 30),
        padding: EdgeInsets.only(left: 20),
       child:GestureDetector(
         child:new Row(
           //孩子们
           children: <Widget>[
             Image.asset('images/wodedianyingpiao.png',
               //color: Colors.black87,
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
                       color: Colors.white,
                     ),
                   ),
                   Padding(padding: EdgeInsets.only(left: 200),child:
                   Image.asset('images/back.png',color: Colors.white,
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
         onTap: (){
           /*Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyHomeList();
                  }
                  )
              );*/
         },
       )
    );
  }
}

//diyihang第一行
class buttonWidget extends StatefulWidget {
  @override
  _buttonWidget createState() => _buttonWidget();
}
class _buttonWidget extends State<buttonWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(0xff1c2243),
      //设置外边距
      height:80,
      margin: EdgeInsets.only(left:30,top: 20,right: 30),
     // padding: EdgeInsets.only(left: 20),
      //三列
      child:new Row(
        //用MainAxisAlignment.spaceEvenly平均分配子空间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //孩子们
        children: <Widget>[
          Expanded(
              child:GestureDetector(
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
                onTap: (){
                   Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyGuanZhu();
                  }
                  )
              );
                },
              )

          ),
          Expanded(
            child:GestureDetector(
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
              onTap: (){
                 Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyYuYue();
                  }
                  )
              );
              },
            )
          ),
          Expanded(
           child:GestureDetector(
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
             onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return GouPiaoJiLu();
                  }
                  )
              );
             },
           )
          ),
        ],
      ),
    );
  }
}

//diyihang第二行
class buttonWidgets extends StatefulWidget {
  @override
  _buttonWidgets createState() => _buttonWidgets();
}
class _buttonWidgets extends State<buttonWidgets> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(0xff1c2243),
      //设置外边距
      height:80,
      margin: EdgeInsets.only(left:30,top: 0,right: 30),
     // padding: EdgeInsets.only(left: 10),
      //三列
      child:new Row(
        //用MainAxisAlignment.spaceEvenly平均分配子空间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //孩子们
        children: <Widget>[
          Expanded(
             child:GestureDetector(
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
               onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return KanGuoDeMovie();
                  }
                  )
              );
               },
             )
          ),
          Expanded(
             child:GestureDetector(
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
               onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyPingLun();
                  }
                  )
              );
               },
             )
          ),
          Expanded(
             child:GestureDetector(
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
               onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return YiJianFanKui();
                  }
                  )
              );
               },
             )
          ),
        ],
      ),
    );
  }
}

//diyihang第三行
class buttonWidgetss extends StatefulWidget {
  @override
  _buttonWidgetss createState() => _buttonWidgetss();
}
class _buttonWidgetss extends State<buttonWidgetss> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(0xff1c2243),
      //设置外边距
      height:80,
      margin: EdgeInsets.only(left:30,top: 0,right: 30),
      //三列
      child:new Row(
        //用MainAxisAlignment.spaceEvenly平均分配子空间
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //孩子们
        children: <Widget>[
          Expanded(
            child:GestureDetector(
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
              onTap: (){
                 Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MySetting();
                  }
                  )
              );
              },
            )
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
  }
}


