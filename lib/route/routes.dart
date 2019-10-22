import 'package:bilibli_mock/route/page_route.dart';
import 'package:bilibli_mock/views/buy.dart';
import 'package:bilibli_mock/views/channel.dart';
import 'package:bilibli_mock/views/first_screen.dart';
import 'package:bilibli_mock/views/home.dart';
import 'package:bilibli_mock/views/moment.dart';
import 'package:bilibli_mock/views/not_found.dart';
import 'package:bilibli_mock/views/search.dart';

class AppRoute {
  final String name;
  final Function build;
  const AppRoute(this.name, this.build);
}

List routes = [
  AppRoute('/',  (settings) => StaticPageRoute(settings, FirstScreen())),
  AppRoute('/home',  (settings) => StaticPageRoute(settings, Home())),
  AppRoute('/channel',  (settings) => StaticPageRoute(settings, Channel())),
  AppRoute('/moment',  (settings) => StaticPageRoute(settings, Moment())),
  AppRoute('/buy',  (settings) => StaticPageRoute(settings, Buy())),
  AppRoute('/search',  (settings) => LeftSlidePageRoute(settings, Search())),
  AppRoute('/404',  (settings) => LeftSlidePageRoute(settings, NotFound())),
];
