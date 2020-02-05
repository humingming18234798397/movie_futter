import 'package:movie_futter/bean/banner_bean_entity.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

bannerBeanEntityFromJson(BannerBeanEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<BannerBeanResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new BannerBeanResult().fromJson(v));
		});
	}
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> bannerBeanEntityToJson(BannerBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

bannerBeanResultFromJson(BannerBeanResult data, Map<String, dynamic> json) {
	data.imageUrl = json['imageUrl']?.toString();
	data.jumpUrl = json['jumpUrl']?.toString();
	data.rank = json['rank']?.toInt();
	return data;
}

Map<String, dynamic> bannerBeanResultToJson(BannerBeanResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['imageUrl'] = entity.imageUrl;
	data['jumpUrl'] = entity.jumpUrl;
	data['rank'] = entity.rank;
	return data;
}