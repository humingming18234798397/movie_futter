import 'package:movie_futter/generated/json/base/json_convert_content.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';

class RemenmovieEntity with JsonConvert<RemenmovieEntity> {
	List<RemanmovieResult> result;
	String message;
	String status;
}

class RemanmovieResult with JsonConvert<RemanmovieResult> {
	String director;
	String horizontalImage;
	String imageUrl;
	int movieId;
	String name;
	double score;
	String starring;
}
