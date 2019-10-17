import 'package:bilibli_mock/contants/theme.dart';
import 'package:bilibli_mock/widgets/base_layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                decoration: BoxDecoration(
                  color: LIGHT_GREY,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/search.png',
                        height: 18,
                        width: 18,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            '沙画神还原《清明上河图》',
                            style: TextStyle(
                              fontSize: 12,
                              color: MID_GREY,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/images/game.png', width: 20, height: 20),
                  Image.asset('assets/images/download.png',
                      width: 20, height: 20),
                  Image.asset('assets/images/envelope.png',
                      width: 20, height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      tabBar: TabBar(
        labelPadding: EdgeInsets.only(left: 0, right: 0),
        labelColor: PRIMARY_PINK,
        unselectedLabelColor: PRIMARY_GREY,
        labelStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 16.0, color: PRIMARY_GREY),
        indicatorColor: PRIMARY_PINK,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3.0,
        tabs: <Widget>[
          Tab(text: '直播'),
          Tab(text: '推荐'),
          Tab(text: '热门'),
          Tab(text: '追番'),
          Tab(text: '影视'),
          Tab(text: '70年'),
        ],
      ),
      body: TabBarView(children: [
        Center(child: Text('直播')),
        Center(child: Text('推荐')),
        Center(child: Text('热门')),
        Center(child: Text('追番')),
        Center(child: Text('影视')),
        Center(child: Text('70年')),
      ]),
    );
  }
}
