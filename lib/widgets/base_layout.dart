import 'package:bilibli_mock/contants/theme.dart';
import 'package:flutter/material.dart';

class BaseLayout extends StatefulWidget {
  BaseLayout({Key key, this.title, this.tabBar, this.body}) : super(key: key);

  final Widget title;
  final Widget tabBar;
  final Widget body;

  @override
  State<StatefulWidget> createState() {
    return _BaseLayoutState();
  }
}

class _BaseLayoutState extends State<BaseLayout> {
  String name;
  int count = 0;
  int currentIndex = 0;
  List<String> routes = ['/home', '/channel', '/moment', '/buy'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    name = ModalRoute.of(context).settings.name;
    currentIndex = routes.indexOf(name);
    print(name);
    return Container(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  width: 120,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/trible_line.png',
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/default_avatar.png',
                            height: 36,
                            width: 36,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            elevation: 0, // 标题栏阴影
            title: widget.title,
            bottom: widget.tabBar,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: GREY_LIGHT,
                  ),
                ),
                ListTile(
                  // selected: true,
                  leading: Icon(Icons.home),
                  title: Text('首页'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('历史记录'),
                  onTap: () {
                    Navigator.pushNamed(context, '/404');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.cloud_download),
                  title: Text('下载管理'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.star_border),
                  title: Text('我的收藏'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.slow_motion_video),
                  title: Text('稍后再看'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.cloud_upload),
                  title: Text('投稿'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.wb_incandescent),
                  title: Text('创作中心'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.outlined_flag),
                  title: Text('热门活动'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('直播中心'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('BW 成就'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('免流量服务'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('青少年模式'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('我的订单'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('会员购中心'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.live_tv),
                  title: Text('联系客服'),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: widget.body,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: PINK_PRIMARY,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('首页'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text('频道'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.toys),
                title: Text('动态'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket),
                title: Text('会员购'),
              ),
            ],
            currentIndex: currentIndex >= 0 ? currentIndex : 0,
            onTap: (index) {
              name = routes[index];
              Navigator.pushNamedAndRemoveUntil(
                  context, name, (route) => route == null);
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Channel()));
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
