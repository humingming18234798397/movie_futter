import 'package:movie_futter/generated/json/base/json_convert_content.dart';
import 'package:movie_futter/generated/json/base/json_filed.dart';

class YingYuanXiangQingBeanEntity with JsonConvert<YingYuanXiangQingBeanEntity> {
	YingYuanXiangQingBeanResult result;
	String message;
	String status;
}

class YingYuanXiangQingBeanResult with JsonConvert<YingYuanXiangQingBeanResult> {
	String address;
	String businessHoursContent;
	int commentTotal;
	int distance;
	int followCinema;
	int id;
	String label;
	String logo;
	String name;
	String phone;
	String vehicleRoute;
}
