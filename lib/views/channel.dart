import 'package:bilibli_mock/widgets/base_layout.dart';
import 'package:flutter/material.dart';

class Channel extends StatefulWidget {
  const Channel({Key key}) : super(key: key);

  _ChannelState createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Text('频道'),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text('频道'),
          )
        ],
      ),
    );
  }
}