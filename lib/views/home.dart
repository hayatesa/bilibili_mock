import 'package:bilibli_mock/contants/theme.dart';
import 'package:bilibli_mock/state/app_state.dart';
import 'package:bilibli_mock/widgets/base_layout.dart';
import 'package:bilibli_mock/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Consumer<AppState>(
                builder: (context, AppState state, child) => SearchLikeButton(
                  title: state.searchKeyword,
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
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
      tabLength: 5,
      tabBar: TabBar(
        onTap: (index) {},
        labelPadding: EdgeInsets.only(left: 0, right: 0),
        labelColor: PINK_PRIMARY,
        unselectedLabelColor: GREY_PRIMARY,
        labelStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 16.0, color: GREY_PRIMARY),
        indicatorColor: PINK_PRIMARY,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3.0,
        tabs: <Widget>[
          Tab(text: '直播'),
          Tab(text: '推荐'),
          Tab(text: '热门'),
          Tab(text: '追番'),
          Tab(text: '影视'),
        ],
      ),
      body: TabBarView(
        children: [
          Center(child: Text('直播')),
          Center(child: Text('推荐')),
          Center(child: Text('热门')),
          Center(child: Text('追番')),
          Center(child: Text('影视')),
        ],
      ),
    );
  }
}
