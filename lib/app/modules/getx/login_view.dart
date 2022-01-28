import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import 'login_controller.dart';

// SOURCE: https://gist.github.com/eduardoflorence/e49780ab232fa8ad7767bbdbf8389f1e
// TEST: user == 'foo@foo.com' && password == '123'
class LoginView extends StatelessWidget {
  final _controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("TextForm with GetX")),
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _controller.loginFormKey,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextFormField(
                      controller: _controller.emailController,
                      decoration: const InputDecoration(labelText: 'E-mail'),
                      validator: (email) => _controller.emailValidators(email)),
                  TextFormField(
                      controller: _controller.passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (password) => _controller.passwordValidators(password),
                      obscureText: true),
                  ElevatedButton(
                      child: Text('Login'), onPressed: _controller.loginResultSnackbar)
                ]))));
  }
}