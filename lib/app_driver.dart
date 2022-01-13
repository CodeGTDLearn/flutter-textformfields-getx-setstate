import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/getx/login_bindings.dart';
import 'app/modules/overview.dart';

void main() => runApp(const AppDriver());

class AppDriver extends StatelessWidget {
  const AppDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/overview',
      getPages: [
        GetPage(
          name: '/overview',
          page: () => Overview(title: 'Flutter Demo'),
          binding: LoginBinding(),
        ),
      ],
    );
  }
}