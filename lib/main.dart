import 'package:flutter/material.dart';
import 'package:bilibli_mock/views/home.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 255, 255, 255)
        ),
        title: 'Bilibili',
        initialRoute: '/',
        routes: {
          '/': (context) => Home()
        },
      ),
    );
  }
}