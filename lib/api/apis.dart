class Apis {
//接口
  static const String BASE_HOST = "http://mobile.bwstudent.com";
  //发送邮箱http://172.17.8.100/movieApi/user/v2/sendOutEmailCode
  static const String HOME_sendOutEmailCode = BASE_HOST + "/movieApi/user/v2/sendOutEmailCode";
  //登录
  static const String HOME_LOGIN = BASE_HOST + "/movieApi/user/v2/login";
  //注册//http://172.17.8.100/movieApi/user/v2/register
  static const String HOME_REGISTER = BASE_HOST + "/movieApi/user/v2/register";
  //轮播图
  static const String HOME_BANNER = BASE_HOST + "/movieApi/tool/v2/banner";
  //正在热映
  static const String HOME_RELEASE = BASE_HOST + "/movieApi/movie/v2/findReleaseMovieList?page=1&&count=5";
  //即将上映
  static const String HOME_ComingSoon = BASE_HOST + "/movieApi/movie/v2/findComingSoonMovieList?page=1&&count=5";
  //热门电影
  static const String HOME_HOT = BASE_HOST + "/movieApi/movie/v2/findHotMovieList?page=1&&count=5";
  //详情
  static const String HOME_XIANGQING = BASE_HOST + "/movieApi/movie/v2/findMoviesDetail?movieId=";
  //tuijing推荐影院
  static const String HOME_RecommendCinemas = BASE_HOST + "/movieApi/cinema/v1/findRecommendCinemas?page=1&&count=10";
  //附近影院
  static const String HOME_NearbyCinemas = BASE_HOST + "/movieApi/cinema/v1/findNearbyCinemas?page=1&&count=10";
  //海淀区
  static const String HOME_Region = BASE_HOST + "/movieApi/tool/v2/findRegionList";
  //影院详情
  static const String HOME_CinemaInfo = BASE_HOST + "/movieApi/cinema/v1/findCinemaInfo?cinemaId=";
  //yingyuan影院评论
  static const String HOME_AllCinemaComment = BASE_HOST + "/movieApi/cinema/v1/findAllCinemaComment?page=1&count=5&cinemaId=";





  //影院详情
//http://mobile.bwstudent.com/movieApi/cinema/v1/findCinemaInfo?cinemaId=1
//影院详情里的评论
//http://172.17.8.100/movieApi/cinema/v1/findAllCinemaComment?cinemaId=18&page=1&count=5
//上传头像
//http://172.17.8.100/movieApi/user/v1/verify/uploadHeadPic(userId,sessionId,image)
//用户信息
//http://172.17.8.100/movieApi/user/v1/verify/getUserInfoByUserId(userId,sessionId)
//查看系统消息
//http://172.17.8.100/movieApi/tool/v1/verify/findAllSysMsgList?page=1&count=10(userId,sessionId)
//查看关注电影
//http://172.17.8.100/movieApi/user/v2/verify/findUserFollowMovieList?page=1&count=5(userId,sessionId)
//查看关注影院
//http://172.17.8.100/movieApi/user/v2/verify/findUserFollowCinemaList?page=1&count=5(userId,sessionId)
//我的预约
//http://172.17.8.100/movieApi/user/v2/verify/findUserReserve(userId,sessionId)
  //yi意见反馈
  //http://172.17.8.100/movieApi/tool/v1/verify/recordFeedBack (userId,sessionId,content)


}