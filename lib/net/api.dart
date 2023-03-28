import 'package:easy_logger/log.dart';
import 'package:easy_network/network/base/response_entity.dart';
import 'package:easy_network/network/builder.dart';
import 'package:easy_network/network/retrofit.dart';
import 'package:get/get.dart';
import 'network_config.dart';
import 'package:dio/dio.dart';
API get api => Get.find();

class API {
  Retrofit retrofit = getBuilder(NetworkConfig.baseUrl).build;

  Future<dynamic> get(url, map) async {
    _defaultHeaders();
    var data = await retrofit.get(url, data: map, callBackHeaders: (headers) {
      _handlerHeaders(headers);
    });
    return _handlerResponseEntity(data);
  }

  Future<dynamic> post(url, parameter) async {
    _defaultHeaders();
    var data = await retrofit.post(url, data: parameter,callBackHeaders: (headers) {

    });
    return _handlerResponseEntity(data);;
  }

  dynamic _handlerResponseEntity<T>(ResponseEntity? responseEntity) {
    if (responseEntity != null) {
      if (responseEntity.code == NetworkConfig.successCode) {
        return responseEntity.data;
      }
      //TODO 接口失败
    }
    return null;
  }

  static Builder getBuilder(url,
      {int connectTimeout = NetworkConfig.receiveTimeout,
      int receiveTimeout = NetworkConfig.receiveTimeout}) {
    return Retrofit.getInstance()
        .getBuilder()
        .baseUrl(url)
        .openLog()
        .connectTimeout(Duration(seconds: connectTimeout))
        .receiveTimeout(Duration(seconds: receiveTimeout));
  }



  setHeaders(Map<String, String> headers) {
    retrofit.setHeaders(headers);
  }

  _defaultHeaders() {
    retrofit.setHeaders({"platform": "Android"});
    retrofit.setHeaders({"rid": "1231312"});
    retrofit.setHeaders({"uid": "2222222"});
  }


  _handlerHeaders(Headers headers){
    lg.i("_handlerHeaders：$headers");
  }
}
