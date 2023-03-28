import 'package:easy_common/lib/easy_common.dart';
import 'package:easy_common/net/api.dart';

class Application {
  initApp() {
    _initApi();
    _initLog();
  }

  _initApi() {
    Get.put(API());
  }

  _initLog(){
    lg.openLog();
  }
}
