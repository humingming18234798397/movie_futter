import 'package:movie_futter/generated/json/base/json_convert_content.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';

class YingYuanPingJBeanEntity with JsonConvert<YingYuanPingJBeanEntity> {
	List<YingYuanPingJBeanResult> result;
	String message;
	String status;
}

class YingYuanPingJBeanResult with JsonConvert<YingYuanPingJBeanResult> {
	String commentContent;
	String commentHeadPic;
	int commentId;
	int commentTime;
	int commentUserId;
	String commentUserName;
	List<dynamic> greatHeadPic;
	int greatNum;
	int hotComment;
	int isGreat;
}
