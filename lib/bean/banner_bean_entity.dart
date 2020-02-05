import 'package:movie_futter/generated/json/base/json_convert_content.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';

class BannerBeanEntity with JsonConvert<BannerBeanEntity> {
	List<BannerBeanResult> result;
	String message;
	String status;
}

class BannerBeanResult with JsonConvert<BannerBeanResult> {
	String imageUrl;
	String jumpUrl;
	int rank;
}
