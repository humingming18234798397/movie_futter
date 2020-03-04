
import 'package:flutter/material.dart';
import 'package:movie_futter/eventbus/myicons.dart';

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

class _HomeActivity extends State<HomeActivity>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
           // icon: Icon(Icons.list, color: Colors.white),
            icon:Icon(MyIcons.my),
            onPressed: () {
              // 打开抽屉菜单

              Scaffold.of(context).openDrawer();
            },
          );
        }),
        //   backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('练习'),
      ),
        drawer: new MyDrawer(), //抽屉
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
            children: [
              IconButton(icon:Icon(MyIcons.dianying,color: Colors.red,),),
              SizedBox(), //中间位置空出
              IconButton(icon:Icon(MyIcons.yingyuan,color: Colors.red,),),
              //IconButton(icon: Image.asset('images/beiying.jpg'),iconSize: 25.0),

              /*
              *IconButton iconButton = IconButton(
            icon: Image.asset('assets/images/abc.png'),
            padding: EdgeInsets.all(3),
            iconSize: 25.0,
            onPressed: null,
          );

ImageIcon imageIcon = ImageIcon(
                AssetImage('assets/images/abc.png'),
                size: 25.0,
color: Colors.blue)
);

              * */

            ],

          ),
        )

    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset("images/beiying.jpg", width: 200.0);
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //剪裁为圆形
            ClipOval(child: avatar),
            ClipRRect( //剪裁为圆角矩形
              borderRadius: BorderRadius.circular(10.0),
              child: avatar,
            ),
            ClipRect(//将溢出部分剪裁
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: .6,//宽度设为原来宽度一半
                child: avatar,
              ),
            ),

            /*//圆头像
            CircleAvatar(
              //头像半径
                radius: 30,
                backgroundImage:AssetImage('images/beiying.jpg',
                )

            ),*/
                  Text("图片"),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: const Text('列表一'),
                  ),
                  ListTile(
                    title: const Text('列表二'),
                  ),
                  ListTile(
                    title: const Text('列表三'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SizedBox extends StatefulWidget{
  @override
  _SizedBox createState() => new _SizedBox();
}

class _SizedBox extends State<SizedBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: null,
    );
  }
}



