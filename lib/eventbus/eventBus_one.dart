import 'package:flutter/material.dart';
import 'package:movie_futter/eventbus/eventBus_two.dart';
import 'package:movie_futter/eventbus/event_util.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "EventBus",

    home: EventBusDemo2(),
  ));

}

class EventBusDemo2 extends StatefulWidget {
  @override
  _EventBusDemo2State createState() => _EventBusDemo2State();
}

class _EventBusDemo2State extends State<EventBusDemo2> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: FlatButton(
            onPressed: () {

              EventBusUtil.getInstance().fire(PageEvent('测试传值'));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EventBusDemo()));
            },
            child: Text('点击跳转'),
          ),
        ));
  }
}



/*

import 'dart:math';

import 'package:dio/dio.dart';

import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as client;
import 'package:movie/movie_app/Home.dart';
import 'package:movie/movie_app/tabbarview/FilmReview_Widget1.dart';
import 'package:movie/movie_app/tabbarview/Prevue_Widget.dart';
import 'package:movie/movie_app/tabbarview/StagePhoto_Widget.dart';
import 'package:movie/movie_app/tabbarview/introduce_widget.dart';
import 'package:movie/movie_app/utils/Service.dart';
import 'package:movie/movie_app/utils/sp_util.dart';
import 'Eventbus1.dart';
import 'bean/dy_bean_entity.dart';
void  main(){
  runApp(MaterialApp(
    title: "电影详情",
    home: DyXiangQing2(),
  ));
}
class DyXiangQing2 extends StatelessWidget{
  DyXiangQing2({
    Key key,
    @required this.text,
  }):super (key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    print(text+"   2.6");
    // TODO: implement build
    return Scaffold(
      body: DyXiangQing(text),
    );
  }

}
//主框架
class DyXiangQing extends StatefulWidget {
  final String text;
  DyXiangQing(this.text);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return XiangQing_Widget(text);
  }
}


class XiangQing_Widget extends  State<DyXiangQing> with SingleTickerProviderStateMixin {
  final String text;
  DyBeanEntity data2;
  XiangQing_Widget(this.text);
  TabController _tabController; //需要定义一个Controller
  List tabs = ["介绍", "预告", "剧照","影评"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);


  }
  @override
  Widget build(BuildContext context) {
    var dateTime = new DateTime.now();
    var a=dateTime.millisecondsSinceEpoch;
    // TODO: implement build
    return Scrollbar(
      child: SingleChildScrollView(
        child: FutureBuilder(
            future: xiangQingGet(text),
            builder: (context,snapshot){
              if(snapshot.hasData){
                var data=json.decode(snapshot.data.toString());
                data2 = new DyBeanEntity().fromJson(data);
                return  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: CachedNetworkImage(
                        width: double.infinity,
                        imageUrl: data2.result.imageUrl,
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),

                    ),
                    Container(
                      width: double.infinity,
                      height: 114,
                      color: Color(0xFF161B33),
                      child:Stack(
                        children: <Widget>[
                          Opacity(
                              opacity: 1.0,//不透明度

                              child:getPaddingfromLTRB(Text(data2.result.name,
                                style: TextStyle(
                                  color: Color(0xFFffffff),
                                ),
                              ),l: 24,t: 50
                              )
                            */
/*Container(
                                child: Text(data2.result.name),
                              )*//*

                          ),
                          Opacity(
                              opacity: 1.0,//不透明度
                              child:Container(
                                  child:getPaddingfromLTRB(Text(DateTime.fromMillisecondsSinceEpoch(data2.result.releaseTime).toString().substring(0,10),
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                    ),
                                  ),l: 24,t: 20
                                  )
                              )
                          ),
                          Opacity(
                              opacity: 1.0,//不透明度

                              child:Container(
                                child: getPaddingfromLTRB(Image(image: AssetImage("images/weiguanzhu.png"),width: 20,height: 20)
                                    ,    l: 494,t: 32  ),
                              )
                          ),
                        ],
                      ),

                    ),

                    Container(
                      width: double.infinity,
                      color: Color(0xFF1E2444),
                      child: TabBar(
                        controller: _tabController,
                        tabs:  tabs.map((e) => Tab(text: e)).toList(),
                        indicatorColor: Color(0xFFE8185E),//选中时下划线颜色,如果使用了indicator这里设置无效
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white,
                      ),


                    ),
                    Container(

                      width: double.infinity,
                      height: 850,
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Container(
                            child: introduce_widget(data2),
                          ),
                          Container(
                            child: Prevue_Widget(),
                          ),
                          Container(
                            child: StagePhoto_Widget(data2),
                          ),
                          Container(
                            child: FilmReview_Widget(data2.result.movieId.toString()),
                          ),
                        ],

                      ),
                    )

                  ],
                );
              }else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),

      ),
    );
  }

}

*/
