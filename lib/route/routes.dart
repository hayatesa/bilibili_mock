import 'package:bilibli_mock/route/static_page_route.dart';
import 'package:bilibli_mock/views/buy.dart';
import 'package:bilibli_mock/views/channel.dart';
import 'package:bilibli_mock/views/first_screen.dart';
import 'package:bilibli_mock/views/home.dart';
import 'package:bilibli_mock/views/moment.dart';
import 'package:bilibli_mock/views/not_found.dart';

class AppRouter {
  final String name;
  final Function pageRouteBuilder;
  const AppRouter(this.name, this.pageRouteBuilder);
}

List routes = [
  AppRouter('/',  (settings) => StaticPageRoute(settings, FirstScreen())),
  AppRouter('/home',  (settings) => StaticPageRoute(settings, Home())),
  AppRouter('/channel',  (settings) => StaticPageRoute(settings, Channel())),
  AppRouter('/moment',  (settings) => StaticPageRoute(settings, Moment())),
  AppRouter('/buy',  (settings) => StaticPageRoute(settings, Buy())),
  AppRouter('/404',  (settings) => StaticPageRoute(settings, NotFound())),
];
