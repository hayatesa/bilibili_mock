import 'package:bilibli_mock/widgets/base_layout.dart';
import 'package:flutter/material.dart';

class Moment extends StatefulWidget {
  const Moment({Key key}) : super(key: key);

  _MomentState createState() => _MomentState();
}

class _MomentState extends State<Moment> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Text('动态'),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text('动态'),
          )
        ],
      ),
    );
  }
}