import 'package:dio/dio.dart';
import 'package:movie_futter/api/apis.dart';
import 'package:movie_futter/api/dio_manager.dart';
import 'package:movie_futter/bean/xiangqing_bean_entity.dart';



void getArticleList(
    Function callback, Function errorCallback, String text) async {
  dio.get(Apis.HOME_XIANGQING+text).then((response) {
    callback(XiangqingBeanEntity().fromJson(response.data));
  }).catchError((e) {
    errorCallback(e);
  });
}


//轮播图
Future get_Banner() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_BANNER);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}

//正在热映
Future get_Data1() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_RELEASE);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//即将上映
Future get_Data2() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_ComingSoon);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//热门电影
Future get_Data3() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_HOT);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//详情页
Future xiangQingGet(String text) async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_XIANGQING+text);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//推荐影院
Future get_TuiJian() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_RecommendCinemas);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//附近影院
Future get_FuJin() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_NearbyCinemas);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//海淀区
Future get_HaiDianQu() async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_Region);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//影院详情
Future get_YingYuanXQ(String text) async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_CinemaInfo+text);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}
//影院评论
Future yingyuan_pingjia(String id) async{
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        Apis.HOME_AllCinemaComment+id);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口异常");
    }
  }catch(e){
    return print("异常=======>${e}");
  }
}