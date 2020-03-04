import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "FloatingActionButton",

    home: My_Setting(),
  ));

}


class My_Setting extends StatefulWidget {
  @override
  _My_SettingState createState() => _My_SettingState();
}

class _My_SettingState extends State<My_Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff141931),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "我的",
          ),
        ),
        body: _HomeContent(),
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _Stack_Widget(),
      ],
    );
  }
}

//Stack 电影故事
class _Stack_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
          //设置外边距
          height: 130,
          width: 500,
          //边框设置
          decoration: new BoxDecoration(
            //背景
            color: Color(0xff1c2243),
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        new Container(
          margin: EdgeInsets.fromLTRB(60, 45, 0, 0),
          height: 80,
          width: 80,
          child: new CircleAvatar(
            //头像半径
            radius: 60,
            backgroundImage: new AssetImage('images/jc.jpg'),
          ),
        ),
        new Container(
          margin: EdgeInsets.fromLTRB(160, 70, 0, 0),
          child: new Text(
            '电影故事',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
          ),
        ),
        new Container(
          width: 500,
          height: 50,
          margin: EdgeInsets.fromLTRB(50, 160, 0, 0),
          //边框设置
          decoration: new BoxDecoration(
            //背景
            color: Color(0xff1c2243),
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Image(image: new AssetImage('images/wodedianyingpiao.png')),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("电影票"
                ,style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        new Container(
          margin: EdgeInsets.fromLTRB(50, 250, 0, 0),
          height: 400,
          width: 500,
          color: Color(0xff1c2243),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    width: 90,
                    height: 90,
                    child: Image(
                      image: new AssetImage('images/copy_1.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                    width: 100,
                    height: 120,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
                          child: Image(
                            image: new AssetImage('images/copy_2.png'),
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            '我的预约',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                    width: 90,
                    height: 90,
                    child: Image(
                      image: new AssetImage('images/copy_3.png'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                    width: 90,
                    height: 90,
                    child: Image(
                      image: new AssetImage('images/copy_4.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 30, 0, 0),
                    width: 90,
                    height: 90,
                    child: Image(
                      image: new AssetImage('images/copy_5.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(90, 30, 0, 0),
                    width: 90,
                    height: 90,
                    child: Image(
                      image: new AssetImage('images/copy_6.png'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                    width: 90,
                    height: 90,
                    child: Image(
                      image: new AssetImage('images/copy_7.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
