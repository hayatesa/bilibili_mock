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
            '404 Not Found.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              decoration: TextDecoration.none,
            ),
          ),
          RaisedButton(
            child: Text('返回首页'),
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
