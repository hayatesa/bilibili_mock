import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  static const Color THEME_COLOR = Color.fromARGB(255, 251, 114, 153);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
          length: 6,
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: Text('Bilibili'),
                bottom: TabBar(
                  labelPadding: EdgeInsets.only(left: 0, right: 0),
                  labelColor: THEME_COLOR,
                  unselectedLabelColor: Color.fromARGB(255, 115, 115, 115),
                  labelStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 115, 115, 115)),
                  indicatorColor: THEME_COLOR,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3.0,
                  tabs: <Widget>[
                    Tab(
                      text: '直播',
                    ),
                    Tab(
                      text: '推荐',
                    ),
                    Tab(
                      text: '热门',
                    ),
                    Tab(
                      text: '追番',
                    ),
                    Tab(
                      text: '影视',
                    ),
                    Tab(
                      text: '70年',
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: THEME_COLOR,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('首页'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    title: Text('频道'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    title: Text('动态'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card),
                    title: Text('会员购'),
                  ),
                ],
                currentIndex: 0,
                onTap: (index) {},
              ))),
    );
  }
}
