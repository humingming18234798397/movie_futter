import 'package:movie_futter/bean/ying_yuan_xiang_qing_bean_entity.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

yingYuanXiangQingBeanEntityFromJson(YingYuanXiangQingBeanEntity data, Map<String, dynamic> json) {
	data.result = json['result'] != null ? new YingYuanXiangQingBeanResult().fromJson(json['result']) : null;
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> yingYuanXiangQingBeanEntityToJson(YingYuanXiangQingBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] = YingYuanXiangQingBeanResult().toJson();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

yingYuanXiangQingBeanResultFromJson(YingYuanXiangQingBeanResult data, Map<String, dynamic> json) {
	data.address = json['address']?.toString();
	data.businessHoursContent = json['businessHoursContent']?.toString();
	data.commentTotal = json['commentTotal']?.toInt();
	data.distance = json['distance']?.toInt();
	data.followCinema = json['followCinema']?.toInt();
	data.id = json['id']?.toInt();
	data.label = json['label']?.toString();
	data.logo = json['logo']?.toString();
	data.name = json['name']?.toString();
	data.phone = json['phone']?.toString();
	data.vehicleRoute = json['vehicleRoute']?.toString();
	return data;
}

Map<String, dynamic> yingYuanXiangQingBeanResultToJson(YingYuanXiangQingBeanResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['address'] = entity.address;
	data['businessHoursContent'] = entity.businessHoursContent;
	data['commentTotal'] = entity.commentTotal;
	data['distance'] = entity.distance;
	data['followCinema'] = entity.followCinema;
	data['id'] = entity.id;
	data['label'] = entity.label;
	data['logo'] = entity.logo;
	data['name'] = entity.name;
	data['phone'] = entity.phone;
	data['vehicleRoute'] = entity.vehicleRoute;
	return data;
}