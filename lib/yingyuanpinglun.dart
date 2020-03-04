import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:movie_futter/api/GetPadding.dart';
import 'package:movie_futter/api/apiservice.dart';
import 'package:movie_futter/bean/ying_yuan_ping_j_bean_entity.dart';


class FilmReview_Widget extends StatefulWidget {
  String id;

  FilmReview_Widget(this.id);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FilmReview_Widget(id);
  }
}

class _FilmReview_Widget extends State<FilmReview_Widget> {
  String id;

  _FilmReview_Widget(this.id);

  List findAllMovieCommentList;
  YingYuanPingJBeanEntity data2;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      //  color: Color(0xFF161B33),
      //  color: Colors.red,
      width: double.infinity,
      // height: 300,
      child: FutureBuilder(
          future: yingyuan_pingjia(id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data=json.decode(snapshot.data.toString());
              data2=new YingYuanPingJBeanEntity().fromJson(data);
              findAllMovieCommentList=data2.result;
              return getPadding(
                  Container(
                    width: double.infinity,
                    //height: 300,
                    //    color: Colors.green,
                    child: ListView(
                      children: FindAllMovieCommentList(),
                    ),
                  ),
                  10);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  List<Widget> FindAllMovieCommentList() {
    return findAllMovieCommentList.map((item) {
      return Container(
        // height: 372,
        //color: Colors.indigo,
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                //头像
                getPaddingfromLTRB(
                    ClipOval(
                      child: CachedNetworkImage(
                        width: 70,
                        height: 70,
                        imageUrl: item.commentHeadPic,
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    l: 20),
                //名字
                getPaddingfromLTRB(
                    Text(
                      item.commentUserName,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    l: 110,
                    t: 10),
                //评论内容
                getPaddingfromLTRB(
                    Text(
                      item.commentContent,
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    l: 20,
                    t: 95),
                //时间
                /*  getPaddingfromLTRB(
                    Text(
                      DateTime.fromMillisecondsSinceEpoch(item.commentTime)
                          .toString()
                          .substring(0, 19),
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    l: 390,
                    t: 15),*/
                //点赞图片
                getPaddingfromLTRB(
                    Image(
                        image: AssetImage("images/yizan.png"),
                        width: 20,
                        height: 20),
                    l: 20,
                    t: 150),
                //点赞数量
                getPaddingfromLTRB(
                    Text(
                      item.greatNum.toString()+'点赞',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    l: 280,
                    t: 152),
                //评分
                /*  getPaddingfromLTRB(
                  Text(
                    item.score.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  l: 240,
                  t: 43),*/

              ],
            ),
            getPadding(
                Container(
                  width: double.infinity,
                  height: 3,
                  color: Color(0xFF1F243B),
                ),
                25)
          ],
        )),
      );
    }).toList();
  }
}
