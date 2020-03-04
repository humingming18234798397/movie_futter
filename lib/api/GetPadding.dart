import 'package:flutter/cupertino.dart';

Widget getPadding(Widget w,double all){
  return Padding(
    child:w,
    padding:EdgeInsets.all(all),
  );
}

/**
 * 组件选择性加padding
 * 这里用了位置可选命名参数{param1,param2,...}来命名参数，也调用的时候可以不传
 *
 */
Widget getPaddingfromLTRB(Widget w,{double l,double t,double,r,double b}){
  return Padding(
    child:w,
    padding:EdgeInsets.fromLTRB(l ?? 0,t ?? 0,r ?? 0,b ?? 0),
  );
}