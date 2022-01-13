import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

// SOURCE: https://gist.github.com/eduardoflorence/e49780ab232fa8ad7767bbdbf8389f1e
// TEST: user == 'foo@foo.com' && password == '123'
class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    // avoid to type the email... all the time when coding
    emailController.text = 'foo@foo.com';
    passwordController.text = '123';
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? emailValidators(String? email) {
    if (email == null || email.isEmpty) return 'Please this field must be filled';
    if (email.isEmail) return 'Invalid Email';
    return null;
  }

  passwordValidators(String? password) {
    if (password == null) return 'Please this field must be filled';
    if (password.length < 8 ) return 'Minimal 08 characteres';
    final regexCheck = RegExp(r'^[a-zA-Z0-9]+$');
    if (!regexCheck.hasMatch(password)) return 'Should have number or letter only';
    return null;
  }

  void loginResultSnackbar() {
    if (loginFormKey.currentState!.validate()) {
      _simulatesApiRequest(emailController.text, passwordController.text).then((auth) {
        if (auth)
          Get.snackbar(
            'Login',
            'Login successfully',
            shouldIconPulse: true,
            snackPosition: SnackPosition.BOTTOM,
            icon: Icon(Icons.login),
            backgroundColor: Colors.white,
          );
        if (!auth)
          Get.snackbar(
            'Login',
            'Invalid email or password',
            shouldIconPulse: true,
            snackPosition: SnackPosition.BOTTOM,
            icon: Icon(Icons.call),
            backgroundColor: Colors.white,
          );
        passwordController.clear();
      });
    }
  }

  // Api Simulation
  Future<bool> _simulatesApiRequest(String user, String password) {
    if (user == 'foo@foo.com' && password == '123') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}