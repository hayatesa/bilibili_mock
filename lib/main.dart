import 'package:bilibli_mock/route/routes.dart';
import 'package:bilibli_mock/route/static_page_route.dart';
import 'package:bilibli_mock/views/not_found.dart';
import 'package:flutter/material.dart';


main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  Route onGenerateRoute(RouteSettings settings) {
    for (AppRouter route in routes) {
      if(settings.name == route.name) {
        return route.build(settings);
      }
    }
    return StaticPageRoute(settings, NotFound());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 255, 255, 255)
        ),
        title: 'Bilibili',
        initialRoute: '/home',
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}