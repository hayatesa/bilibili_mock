import 'package:bilibli_mock/route/routes.dart';
import 'package:bilibli_mock/route/page_route.dart';
import 'package:bilibli_mock/state/app_state.dart';
import 'package:bilibli_mock/views/not_found.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(ChangeNotifierProvider.value(
      value: AppState(),
      child: App(),
    ));

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  Route onGenerateRoute(RouteSettings settings) {
    for (AppRoute route in routes) {
      if (settings.name == route.name) {
        return route.build(settings);
      }
    }
    return null;
  }

  Route onUnknownRoute(RouteSettings settings) {
    return StaticPageRoute(settings, NotFound());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 255, 255)),
        title: 'Bilibili',
        initialRoute: '/home',
        onGenerateRoute: onGenerateRoute,
        onUnknownRoute: onUnknownRoute,
      ),
    );
  }
}
