import 'package:movie_futter/generated/json/base/json_convert_content.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';

class XiangqingBeanEntity with JsonConvert<XiangqingBeanEntity> {
	XiangqingBeanResult result;
	String message;
	String status;
}

class XiangqingBeanResult with JsonConvert<XiangqingBeanResult> {
	int commentNum;
	String duration;
	String imageUrl;
	List<XiangqingBeanResultMovieActor> movieActor;
	List<XiangqingBeanResultMovieDirector> movieDirector;
	int movieId;
	String movieType;
	String name;
	String placeOrigin;
	List<String> posterList;
	int releaseTime;
	double score;
	List<XiangqingBeanResultShortFilmList> shortFilmList;
	String summary;
	int whetherFollow;
}

class XiangqingBeanResultMovieActor with JsonConvert<XiangqingBeanResultMovieActor> {
	String name;
	String photo;
	String role;
}

class XiangqingBeanResultMovieDirector with JsonConvert<XiangqingBeanResultMovieDirector> {
	String name;
	String photo;
}

class XiangqingBeanResultShortFilmList with JsonConvert<XiangqingBeanResultShortFilmList> {
	String imageUrl;
	String videoUrl;
}
