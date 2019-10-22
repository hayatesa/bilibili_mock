import 'package:bilibli_mock/contants/theme.dart';
import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Colors.white,
            shape: CircleBorder(),
            child: Icon(Icons.arrow_back, color: PINK_PRIMARY, size: 100,),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => route == null);
            },
          )
        ],
      ),
    );
  }
}
