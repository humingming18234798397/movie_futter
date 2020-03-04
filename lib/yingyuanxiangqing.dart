
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:movie_futter/api/GetPadding.dart';
import 'package:movie_futter/api/apiservice.dart';
import 'package:movie_futter/api/sp_util.dart';
import 'package:movie_futter/bean/ying_yuan_xiang_qing_bean_entity.dart';
import 'package:movie_futter/yingyuanpinglun.dart';


class YingYuanXiangQing extends StatelessWidget{
  YingYuanXiangQing({
    Key key,
    @required this.text,
  }
      ):super (key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: YingYuanXQ2(text),
    );
  }

}

class YingYuanXQ2 extends StatefulWidget{
  final String text;
  YingYuanXQ2(this.text);
  @override
  YingYuanXQ2State createState() => YingYuanXQ2State(text);
}
YingYuanXiangQingBeanEntity data_yingyuan;
class YingYuanXQ2State extends State<YingYuanXQ2>{
  final String text;
  YingYuanXQ2State(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff141931),
        title: Text('影院详情'),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff141931),
      body: Column(
        children: <Widget>[
          _nameYingYuan(),
          _TabYingYuan(text)
        ],
      ),
    );
  }
}

class _nameYingYuan extends StatefulWidget{

  _nameYingYuanState createState() => _nameYingYuanState();
}

class _nameYingYuanState extends State<_nameYingYuan>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        _yingyaunName(),
        _yiangyuanSheBei()
      ],
    );
  }
  Widget _yingyaunName() {
    return Container(
      width: 500,
      height: 20,
      margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
      child: Row(
        children: <Widget>[
          Center(
            child: Text(
              data_yingyuan.result.name,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(210, 0, 0, 0),
            child: Image.asset(
              'images/weiguanzhu.png',
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }

  Widget _yiangyuanSheBei() {
    return Container(
      width: 500,
      height: 20,
      margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
      child: Row(
        children: <Widget>[
          Text(
            data_yingyuan.result.label,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          Container(
            width: 100,
            height: 20,
            margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/zhilubiao.png',
                  width: 20,
                  height: 20,
                ),
                Text(
                  '到这里去',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

String id;

class _TabYingYuan extends StatefulWidget{
  final String text;
  _TabYingYuan(this.text);
  _TabYingYuanState createState() => _TabYingYuanState(text);
}

class _TabYingYuanState extends State<_TabYingYuan>
    with SingleTickerProviderStateMixin
{
  List yingYuanList;

  final String text;
  _TabYingYuanState(this.text);

  List tabs = ["影院详情", "影院评论"];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    id =SPUtil.getString("ids");
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: double.infinity,
      height: 600,
      // color: Colors.indigo,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      /*child:Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              color: Color(0xFF1E2444),
              child: TabBar(
                controller: _tabController,
                tabs: tabs.map((e)=>Tab(text: e)).toList(),

              ),
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 530,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[

                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.location_on,color: Colors.white,size: 30.0,),
                              Text('address',style: TextStyle(fontSize: 14,color: Colors.white,),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.phone,color: Colors.white,size: 30.0,),
                              Text('phone',style: TextStyle(fontSize: 14,color: Colors.white),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Center(
                            child:   Text('address',style: TextStyle(fontSize: 16,color: Colors.white),
                              textAlign: TextAlign.left,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),

                  ListView(
                    children: <Widget>[
                      ListTile(title: Text('sff'),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ) ,*/
      child: FutureBuilder(
          future: get_YingYuanXQ(text),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data=json.decode(snapshot.data.toString());
              data_yingyuan=new YingYuanXiangQingBeanEntity().fromJson(data);
              // yingYuanList=data_yingyuan.result;
              print(data);
              return getPadding(
                  Container(
                    width: double.infinity,
                    //height: 300,
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF1E2444),
                            child: TabBar(
                              controller: _tabController,
                              tabs: tabs.map((e)=>Tab(text: e)).toList(),

                            ),
                          ),
                          Container(
                            // color: Colors.red,
                            width: double.infinity,
                            height: 530,
                            child: TabBarView(
                              controller: _tabController,
                              children: <Widget>[

                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(

                                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.location_on,color: Colors.white,size: 30.0,),
                                            Text(data_yingyuan.result.name,style: TextStyle(fontSize: 14,color: Colors.white,),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.phone,color: Colors.white,size: 30.0,),
                                            Text(data_yingyuan.result.phone,style: TextStyle(fontSize: 14,color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Center(
                                          child:   Text(data_yingyuan.result.vehicleRoute,style: TextStyle(fontSize: 16,color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                FilmReview_Widget(id)
                              ],
                            ),
                          )
                        ],
                      ),
                    ) ,
                    //    color: Colors.green,
                  ),
                  10);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    ) ;

  }


}