import 'package:get/instance_manager.dart';

import 'login_controller.dart';

// SOURCE: https://gist.github.com/eduardoflorence/e49780ab232fa8ad7767bbdbf8389f1e
// TEST: user == 'foo@foo.com' && password == '123'
class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}