import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnChangedTextFormFieldSetstate extends StatefulWidget {
  String title;

  OnChangedTextFormFieldSetstate(this.title);

  @override
  _OnChangedTextFormFieldSetstateState createState() =>
      _OnChangedTextFormFieldSetstateState();
}

class _OnChangedTextFormFieldSetstateState extends State<OnChangedTextFormFieldSetstate> {
  late Future userFuture;
  String name = "Type your text...";

  @override
  void initState() {
    super.initState();
    userFuture = Future.value("Retorno do future");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: Text("OnChanged Approuch")),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text("Result Field: $name"),
            TextFormField(
              initialValue: name,
              onChanged: (typedText) {
                setState(() {
                  name = typedText;
                });
              },
            )
          ],
        ),
      )),
    );
  }
}