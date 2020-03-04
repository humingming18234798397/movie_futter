import 'package:movie_futter/bean/xiangqing_bean_entity.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

xiangqingBeanEntityFromJson(XiangqingBeanEntity data, Map<String, dynamic> json) {
	data.result = json['result'] != null ? new XiangqingBeanResult().fromJson(json['result']) : null;
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> xiangqingBeanEntityToJson(XiangqingBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] = XiangqingBeanResult().toJson();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

xiangqingBeanResultFromJson(XiangqingBeanResult data, Map<String, dynamic> json) {
	data.commentNum = json['commentNum']?.toInt();
	data.duration = json['duration']?.toString();
	data.imageUrl = json['imageUrl']?.toString();
	if (json['movieActor'] != null) {
		data.movieActor = new List<XiangqingBeanResultMovieActor>();
		(json['movieActor'] as List).forEach((v) {
			data.movieActor.add(new XiangqingBeanResultMovieActor().fromJson(v));
		});
	}
	if (json['movieDirector'] != null) {
		data.movieDirector = new List<XiangqingBeanResultMovieDirector>();
		(json['movieDirector'] as List).forEach((v) {
			data.movieDirector.add(new XiangqingBeanResultMovieDirector().fromJson(v));
		});
	}
	data.movieId = json['movieId']?.toInt();
	data.movieType = json['movieType']?.toString();
	data.name = json['name']?.toString();
	data.placeOrigin = json['placeOrigin']?.toString();
	if (json['posterList'] != null) {
		data.posterList = json['posterList']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	data.releaseTime = json['releaseTime']?.toInt();
	data.score = json['score']?.toDouble();
	if (json['shortFilmList'] != null) {
		data.shortFilmList = new List<XiangqingBeanResultShortFilmList>();
		(json['shortFilmList'] as List).forEach((v) {
			data.shortFilmList.add(new XiangqingBeanResultShortFilmList().fromJson(v));
		});
	}
	data.summary = json['summary']?.toString();
	data.whetherFollow = json['whetherFollow']?.toInt();
	return data;
}

Map<String, dynamic> xiangqingBeanResultToJson(XiangqingBeanResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['commentNum'] = entity.commentNum;
	data['duration'] = entity.duration;
	data['imageUrl'] = entity.imageUrl;
	if (entity.movieActor != null) {
		data['movieActor'] =  entity.movieActor.map((v) => v.toJson()).toList();
	}
	if (entity.movieDirector != null) {
		data['movieDirector'] =  entity.movieDirector.map((v) => v.toJson()).toList();
	}
	data['movieId'] = entity.movieId;
	data['movieType'] = entity.movieType;
	data['name'] = entity.name;
	data['placeOrigin'] = entity.placeOrigin;
	data['posterList'] = entity.posterList;
	data['releaseTime'] = entity.releaseTime;
	data['score'] = entity.score;
	if (entity.shortFilmList != null) {
		data['shortFilmList'] =  entity.shortFilmList.map((v) => v.toJson()).toList();
	}
	data['summary'] = entity.summary;
	data['whetherFollow'] = entity.whetherFollow;
	return data;
}

xiangqingBeanResultMovieActorFromJson(XiangqingBeanResultMovieActor data, Map<String, dynamic> json) {
	data.name = json['name']?.toString();
	data.photo = json['photo']?.toString();
	data.role = json['role']?.toString();
	return data;
}

Map<String, dynamic> xiangqingBeanResultMovieActorToJson(XiangqingBeanResultMovieActor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['photo'] = entity.photo;
	data['role'] = entity.role;
	return data;
}

xiangqingBeanResultMovieDirectorFromJson(XiangqingBeanResultMovieDirector data, Map<String, dynamic> json) {
	data.name = json['name']?.toString();
	data.photo = json['photo']?.toString();
	return data;
}

Map<String, dynamic> xiangqingBeanResultMovieDirectorToJson(XiangqingBeanResultMovieDirector entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['photo'] = entity.photo;
	return data;
}

xiangqingBeanResultShortFilmListFromJson(XiangqingBeanResultShortFilmList data, Map<String, dynamic> json) {
	data.imageUrl = json['imageUrl']?.toString();
	data.videoUrl = json['videoUrl']?.toString();
	return data;
}

Map<String, dynamic> xiangqingBeanResultShortFilmListToJson(XiangqingBeanResultShortFilmList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['imageUrl'] = entity.imageUrl;
	data['videoUrl'] = entity.videoUrl;
	return data;
}