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
          Text(
            '404 Not Found',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              decoration: TextDecoration.none,
            ),
          ),
          RaisedButton(
            color: Colors.white,
            shape: CircleBorder(),
            child: Icon(Icons.arrow_back, color: PINK_PRIMARY,),
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
