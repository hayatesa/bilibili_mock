import 'package:bilibli_mock/contants/theme.dart';
import 'package:bilibli_mock/state/app_state.dart';
import 'package:bilibli_mock/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Search extends StatelessWidget {
  Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _state = Provider.of<AppState>(context);

    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: <Widget>[
              Expanded(
                child: SearchLikeButton(
                  title: _state.searchKeyword,
                  onTap: () => print('search'),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: GREY_PRIMARY,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Consumer<AppState>(
              builder: (BuildContext context, AppState state, Widget child) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => state.setSearchKeyword('查找精彩动态内容'),
                    child: Text('动态'),
                  ),
                  FlatButton(
                    onPressed: () => state.setSearchKeyword('写文章'),
                    child: Text('文章'),
                  ),
                  FlatButton(
                    onPressed: () => state.setSearchKeyword('写代码'),
                    child: Text('代码'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
