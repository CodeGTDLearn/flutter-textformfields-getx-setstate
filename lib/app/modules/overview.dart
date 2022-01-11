import 'package:flutter/material.dart';
import 'package:flutter_textform_field/app/core/custom_tab_bar.dart';

import 'onchanged_text_form_field_setstate.dart';

class Overview extends StatelessWidget {
  String title = "";

  Overview({required this.title});

  @override
  Widget build(BuildContext context) {
    var _simple_text_form = 'TextForm SetState';

    return CustomTabBar(
      title: title,
      listTabBarView: [
        OnChangedTextFormFieldSetstate(_simple_text_form),
      ],
      listTabBar: [
        Tab(icon: const Icon(Icons.add_moderator), text: _simple_text_form),
      ],
    );
  }
}