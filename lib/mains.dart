import 'package:flutter/material.dart';
import 'package:movie_futter/eventbus/myicons.dart';
import 'package:movie_futter/homehttp.dart';
import 'package:movie_futter/homemovie.dart';
import 'package:movie_futter/mymovie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "FloatingActionButton",

    home: HomeActivity(),
  ));

}



class HomeActivity extends StatefulWidget{
  @override
  _HomeActivity createState() => new _HomeActivity();
}

class _HomeActivity extends State<HomeActivity> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new HomePage(),
            new Cinema(),
            new My_Setting(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Color(0xff141931),
          // backgroundColor: Color(0xff141931),
          child: TabBar(
            controller: controller,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              new Tab(
                text: "电影",
                 icon:Icon(MyIcons.dianying),
                /*icon: Image.asset('images/movie.png',
                ),*/
              ),
              new Tab(
                text: "影院",
                icon:Icon(MyIcons.yingyuan),
                //icon: new Icon(Icons.album),
                /*icon: Image.asset('images/yingyuna_false.png',
                  width: 30,
                  height: 30,
                ),*/
              ),
              new Tab(
                text: "我的",
                icon:Icon(MyIcons.my),
               /*icon: Image.asset('images/my_false.png',
                 width: 30,
                 height: 30,
               ),*/
              ),
            ],
          ),
        )
      ),
    );
  }
}