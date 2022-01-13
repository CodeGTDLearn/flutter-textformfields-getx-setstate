import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnChangedSetstate extends StatefulWidget {
  String title;

  OnChangedSetstate(this.title);

  @override
  _OnChangedSetstateState createState() => _OnChangedSetstateState();
}

class _OnChangedSetstateState extends State<OnChangedSetstate> {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("OnChanged Approuch"),
      ),
      body: Container(
          child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(children: [
                Text("Result Field: $name"),
                TextFormField(
                    initialValue: name,
                    onChanged: (typedText) {
                      setState(() {
                        name = typedText;
                      });
                    })
              ]))),
    );
  }
}