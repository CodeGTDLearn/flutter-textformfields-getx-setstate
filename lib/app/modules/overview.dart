import 'package:flutter/material.dart';
import 'package:flutter_textform_field/app/core/custom_tab_bar.dart';

import 'getx/login_view_getx.dart';
import 'setstate/onchanged_setstate.dart';

class Overview extends StatelessWidget {
  String title = "";

  Overview({required this.title});

  @override
  Widget build(BuildContext context) {
    var _simple_text_form = 'SetState';
    var _getx_text_form = 'GetX';

    return CustomTabBar(
      title: title,
      listTabBarView: [
        OnChangedSetstate(_simple_text_form),
        LoginViewGetx(),
      ],
      listTabBar: [
        Tab(icon: const Icon(Icons.add_moderator), text: _simple_text_form),
        Tab(icon: const Icon(Icons.share), text: _getx_text_form),
      ],
    );
  }
}