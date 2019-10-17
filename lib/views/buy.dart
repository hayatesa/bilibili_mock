import 'package:bilibli_mock/widgets/base_layout.dart';
import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  const Buy({Key key}) : super(key: key);

  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Text('会员购'),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text('会员购'),
          )
        ],
      ),
    );
  }
}