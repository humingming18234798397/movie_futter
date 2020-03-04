
import 'package:flutter/material.dart';
import 'package:movie_futter/mymovie.dart';
import 'package:movie_futter/myyemian/banbengengxin.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyUser extends StatefulWidget {
  @override
  _MyUser createState() => _MyUser();
}

class _MyUser extends State<MyUser> {

  //记录选择的照片
  File _image;

  //拍照
  Future _getImageFromCamera() async {
    var image =
    await ImagePicker.pickImage(source: ImageSource.camera, maxWidth: 400);

    setState(() {
      _image = image;
    });
  }

  //相册选择
  Future _getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

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
        title: Text('我的'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
   //头像
             Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 20,top: 20),
              child: GestureDetector(
                child: Padding(
                  padding:EdgeInsets.only(left: 10),
                  child:Row(
                    children: <Widget>[
                      Text('头像',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 330),child:

                        _image == null
                            ?  //圆头像
                        CircleAvatar(
                          //头像半径
                            radius: 25,
                            //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                            backgroundImage:AssetImage('images/beiying.jpg',
                            )
                        )
                            : Image.file(
                          _image,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
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
                  showDialog<Null>(
                    context: context,
                    builder: (BuildContext context) {
                      return new SimpleDialog(
                        title: new Text('选择'),
                        children: <Widget>[
                          new SimpleDialogOption(
                            child: new Text("相机"),
                            onPressed: () {
                              _getImageFromCamera();
                            },
                          ),
                          new SimpleDialogOption(
                            child: new Text('相册'),
                            onPressed: () {
                              _getImageFromGallery();
                            },
                          ),
                        ],
                      );
                    },
                  ).then((val) {
                    print(val);
                  });


                },
              ),
            ),
   //昵称
             Container(
               margin: EdgeInsets.only(top: 10),
               padding: EdgeInsets.only(left: 20,top: 20),
                 child: Padding(
                   padding:EdgeInsets.only(left: 10),
                   child:Row(
                     children: <Widget>[
                       Text('昵称',
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.white,
                         ),
                       ),
                       Padding(padding: EdgeInsets.only(left: 350),child:
                       Text('昵称',
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.white,
                         ),
                       ),
                       )
                     ],
                   ),
                 ),
             ),
     //性别
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Padding(
                padding:EdgeInsets.only(left: 10),
                child:Row(
                  children: <Widget>[
                    Text('性别',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 350),child:
                    Text('性别',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),
     //出生日期
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20,top: 20),
              child: GestureDetector(
                child: Padding(
                  padding:EdgeInsets.only(left: 10),
                  child:Row(
                    children: <Widget>[
                      Text('出生日期',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 280),child:
                      Text('出生日期',
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
            ),
    //手机号
            Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Padding(
                padding:EdgeInsets.only(left: 10),
                child:Row(
                  children: <Widget>[
                    Text('手机号',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 260),child:
                    Text('13080370738',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),
     //邮箱
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Padding(
                padding:EdgeInsets.only(left: 10),
                child:Row(
                  children: <Widget>[
                    Text('邮箱',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 350),child:
                    Text('邮箱',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}

