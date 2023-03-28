import 'package:easy_common/generated/json/base/json_convert_content.dart';
import 'package:easy_common/net/api.dart';
import 'package:easy_common/test/mode/home_records_entity.dart';


extension HomeApi on API {
  Future<HomeRecordsEntity?> getHomeRecords(Map<String,String> map) async => await dataConverter<HomeRecordsEntity>(await api.get("/appapi/content/subject/polPage",map));
  Future<dynamic> postAppleLogin(Map<String,String> map) async => await dataConverter(await api.post("/appapi/auth/oauth/sign/apple",map));



  Future<T?> dataConverter<T>(dynamic data) async {
    if (data != null) {
      return await Future.value(JsonConvert.fromJsonAsT<T>(data));
    }
    return null;
  }
}
