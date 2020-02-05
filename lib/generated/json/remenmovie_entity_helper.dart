import 'package:movie_futter/bean/remenmovie_entity.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

remenmovieEntityFromJson(RemenmovieEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<RemanmovieResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new RemanmovieResult().fromJson(v));
		});
	}
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> remenmovieEntityToJson(RemenmovieEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

remanmovieResultFromJson(RemanmovieResult data, Map<String, dynamic> json) {
	data.director = json['director']?.toString();
	data.horizontalImage = json['horizontalImage']?.toString();
	data.imageUrl = json['imageUrl']?.toString();
	data.movieId = json['movieId']?.toInt();
	data.name = json['name']?.toString();
	data.score = json['score']?.toDouble();
	data.starring = json['starring']?.toString();
	return data;
}

Map<String, dynamic> remanmovieResultToJson(RemanmovieResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['director'] = entity.director;
	data['horizontalImage'] = entity.horizontalImage;
	data['imageUrl'] = entity.imageUrl;
	data['movieId'] = entity.movieId;
	data['name'] = entity.name;
	data['score'] = entity.score;
	data['starring'] = entity.starring;
	return data;
}