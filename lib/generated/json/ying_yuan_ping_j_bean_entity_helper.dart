import 'package:movie_futter/bean/ying_yuan_ping_j_bean_entity.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

yingYuanPingJBeanEntityFromJson(YingYuanPingJBeanEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<YingYuanPingJBeanResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new YingYuanPingJBeanResult().fromJson(v));
		});
	}
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> yingYuanPingJBeanEntityToJson(YingYuanPingJBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

yingYuanPingJBeanResultFromJson(YingYuanPingJBeanResult data, Map<String, dynamic> json) {
	data.commentContent = json['commentContent']?.toString();
	data.commentHeadPic = json['commentHeadPic']?.toString();
	data.commentId = json['commentId']?.toInt();
	data.commentTime = json['commentTime']?.toInt();
	data.commentUserId = json['commentUserId']?.toInt();
	data.commentUserName = json['commentUserName']?.toString();
	if (json['greatHeadPic'] != null) {
		data.greatHeadPic = new List<dynamic>();
		data.greatHeadPic.addAll(json['greatHeadPic']);
	}
	data.greatNum = json['greatNum']?.toInt();
	data.hotComment = json['hotComment']?.toInt();
	data.isGreat = json['isGreat']?.toInt();
	return data;
}

Map<String, dynamic> yingYuanPingJBeanResultToJson(YingYuanPingJBeanResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['commentContent'] = entity.commentContent;
	data['commentHeadPic'] = entity.commentHeadPic;
	data['commentId'] = entity.commentId;
	data['commentTime'] = entity.commentTime;
	data['commentUserId'] = entity.commentUserId;
	data['commentUserName'] = entity.commentUserName;
	if (entity.greatHeadPic != null) {
		data['greatHeadPic'] =  [];
	}
	data['greatNum'] = entity.greatNum;
	data['hotComment'] = entity.hotComment;
	data['isGreat'] = entity.isGreat;
	return data;
}