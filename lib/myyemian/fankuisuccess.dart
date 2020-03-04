

import 'package:flutter/material.dart';
import 'package:movie_futter/mymovie.dart';

class FanKuiSuccess extends StatefulWidget {
  @override
  _fankuisuccess createState() => _fankuisuccess();
}

class _fankuisuccess extends State<FanKuiSuccess> {
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (
                        BuildContext context
                        ){
                      return My_Setting();
                    }
                    )
                );
              },
            );
          }),
          //   backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('意见反馈'),
        ),
        body:Center(
            child: Column(
              children: <Widget>[
                gengxintupian(),
                Text("提交成功",style: TextStyle(color: Colors.white,fontSize: 16),),
                Text("感谢您对维度影院的关注与支持,我们会认真处理您的问题,尽快修复和完善相关功能。",
                  style: TextStyle(color: Colors.white,fontSize: 14)),

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
            Image.asset('images/fankuisuccess.png',
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

