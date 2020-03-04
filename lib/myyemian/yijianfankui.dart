
import 'package:flutter/material.dart';
import 'package:movie_futter/myyemian/fankuisuccess.dart';

class YiJianFanKui extends StatefulWidget {
  @override
  _yijianfankui createState() => _yijianfankui();
}

class _yijianfankui extends State<YiJianFanKui> {
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
          title: Text('意见反馈'),
        ),
        body:Container(
            height: 150,
            margin: EdgeInsets.only(left:30,top: 20,right: 30),
            padding: EdgeInsets.only(left: 20,top: 20),
            child:Column(
              children: <Widget>[
                TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "写下您对产品的感受吧!工作人员将会在第一时间评估处理。",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none //隐藏下划线
                    )
                ),
                Padding( padding:EdgeInsets.only(left: 260),
                  child:Container(
                    width: 80,
                    height: 30,
                    child: RaisedButton(
                      onPressed:(){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (
                                BuildContext context
                                ){
                              return FanKuiSuccess();
                            }
                            )
                        );
                      },
                      color: Colors.red,
                      child: Text('提交',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ) ,
                )

              ],
            )


        )


    );
  }
}