

import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as client;
import 'package:movie_futter/api/apiservice.dart';
import 'package:movie_futter/api/colors.dart';
import 'package:movie_futter/api/sp_util.dart';
import 'bean/xiangqing_bean_entity.dart';//解码和编码JSON

class DyXiangQing2 extends StatelessWidget{
  DyXiangQing2({
    Key key,
    @required this.text,
  }
      ):super (key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
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
  XiangqingBeanEntity data2;
  XiangQing_Widget(this.text);
  TabController _tabController; //需要定义一个Controller
  List tabs = ["介绍", "预告", "剧照","影评"];

  @override
  void initState(){
    super.initState();
   // xiangQingGet();
    _tabController = TabController(length: tabs.length, vsync: this);

    String str = SPUtil.getString("000");
    print("str");
    print("获取数据========"+str);
  }
/*   xiangQingGet() async {
    client
        .get("http://mobile.bwstudent.com/movieApi/movie/v2/findMoviesDetail?movieId="+text)
        .then((client.Response response){
      var data=json.decode(response.body);
      data2 = new XiangqingBeanEntity().fromJson(data);
      setState(() {
        xiangQingGet();

      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scrollbar(
      child: SingleChildScrollView(
        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new FadeInImage.assetNetwork(
              placeholder: "images/jc.jpg",
              image: data2.result.imageUrl,
              width: double.infinity,
              //height: 300.0,
            ),
            Text(data2.result.name,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            //TextsWidget,
            Text(data2.result.summary,
              textAlign: TextAlign.left,
              style: TextStyle(

              ),
            ),
          ],

        ),*/

        child: FutureBuilder(
            future: xiangQingGet(text),
            builder: (context,snapshot){
              if(snapshot.hasData){
                var data=json.decode(snapshot.data.toString());
                data2 = new XiangqingBeanEntity().fromJson(data);
                print(data);
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
                      color: Colours.qianblue,
                      child:Stack(
                        children: <Widget>[
                          Text(data2.result.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                          /*Text(DateTime.fromMillisecondsSinceEpoch(data2.result.releaseTime).toString().substring(0,10)+"上映",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )*/
                         /* Opacity(
                              opacity: 1.0,//不透明度

                              child:getPaddingfromLTRB(Text(data2.result.name,
                                style: TextStyle(
                                  color: Color(0xFFffffff),
                                ),
                              ),l: 24,t: 50
                              )
                            *//*Container(
                                child: Text(data2.result.name),
                              )*//*
                          ),*/
                          /*Opacity(
                              opacity: 1.0,//不透明度
                              child:Container(
                                  child:getPaddingfromLTRB(Text(DateTime.fromMillisecondsSinceEpoch(data2.result.releaseTime).toString().substring(0,10),
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                    ),
                                  ),l: 24,t: 20
                                  )
                              )
                          ),*/
                         /* Opacity(
                              opacity: 1.0,//不透明度

                              child:Container(
                                child: getPaddingfromLTRB(Image(image: AssetImage("images/weiguanzhu.png"),width: 20,height: 20)
                                    ,    l: 494,t: 32  ),
                              )
                          ),*/
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
                          //  child: introduce_widget(data2),
                          ),
                          Container(
                           // child: Prevue_Widget(),
                          ),
                          Container(
                          //  child: StagePhoto_Widget(data2),
                          ),
                          Container(
                           // child: FilmReview_Widget(data2.result.movieId.toString()),
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



