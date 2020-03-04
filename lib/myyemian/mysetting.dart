
import 'package:flutter/material.dart';
import 'package:movie_futter/mymovie.dart';
import 'package:movie_futter/myyemian/banbengengxin.dart';

class MySetting extends StatefulWidget {
  @override
  _MySettingState createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
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
        title: Text('设置'),
      ),
      body: ListView(
        children: <Widget>[
          qingchuhuancun(),
          banbengengxin(),
          chongzhipassword(),
          tuichu(),
        ],
      ),
    );
  }
}

//清除缓存
class qingchuhuancun extends StatefulWidget {
  @override
  _qingchuhuancun createState() => _qingchuhuancun();
}
class _qingchuhuancun extends State<qingchuhuancun> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20,top: 20),
         child: GestureDetector(
            child: Padding(
              padding:EdgeInsets.only(left: 10),
              child:Row(
                children: <Widget>[
                  Text('清除缓存',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 300),child:
                    Text('10M',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: (){
              /* Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyHomeList();
                  }
                  )
              );*/
            },
          ),
    );
  }
}

//版本更新
class banbengengxin extends StatefulWidget {
  @override
  _banbengengxin createState() => _banbengengxin();
}
class _banbengengxin extends State<banbengengxin> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20,top: 20),
         child: GestureDetector(
            child: Padding(
              padding:EdgeInsets.only(left: 10),
              child:Row(
                children: <Widget>[
                  Text('版本更新',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 310),child:
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
                    return BanBen();
                  }
                  )
              );
            },
          ),
    );
  }
}
//重置密码
class chongzhipassword extends StatefulWidget {
  @override
  _chongzhipassword createState() => _chongzhipassword();
}
class _chongzhipassword extends State<chongzhipassword> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20,top: 20),
      child: GestureDetector(
        child: Padding(
          padding:EdgeInsets.only(left: 10),
          child:Row(
            children: <Widget>[
              Text('重置密码',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 310),child:
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
          /* Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                      BuildContext context
                      ){
                    return MyHomeList();
                  }
                  )
              );*/
        },
      ),
    );
  }
}

//退出登录
class tuichu extends StatefulWidget {
  @override
  _tuichu createState() => _tuichu();
}
class _tuichu extends State<tuichu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 30,top: 50,right: 30),
      width: 200,
      height: 40,
      //padding: EdgeInsets.only(left: 20,top: 20),
      child: RaisedButton(
         onPressed:(){
           Navigator.of(context).push(
               MaterialPageRoute(builder: (
                   BuildContext context
                   ){
                 return My_Setting();
               }
               )
           );
         },
        color: Color(0xff1c2243),
        child: Text('退出登录',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}