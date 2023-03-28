# easy_common
Getting started


1.Add configuration to pubspec.yaml file
~~~
 easy_common:
    git:
      url: https://github.com/DickHoo/easy_common.git
~~~

2.lib usage

a.network 使用
    1.创建XXXApi on API
~~~
extension HomeApi on API {
Future<HomeRecordsEntity?> getHomeRecords(Map<String,String> map) async => await dataConverter<HomeRecordsEntity>(await api.get("/appapi/content/subject/polPage",map));
Future<dynamic> postAppleLogin(Map<String,String> map) async => await dataConverter(await api.post("/appapi/auth/oauth/sign/apple",map));

//数据转换
Future<T?> dataConverter<T>(dynamic data) async {
if (data != null) {
return await Future.value(JsonConvert.fromJsonAsT<T>(data));
}
return null;
}
}        
~~~

    2.调用接口 
~~~
var data = await api.getHomeRecords({"name": "1"});
print("$data")      
~~~

