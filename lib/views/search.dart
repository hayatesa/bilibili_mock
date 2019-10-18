import 'package:bilibli_mock/contants/theme.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                  decoration: BoxDecoration(
                    color: GREY_LIGHT,
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/search');
                              },
                              child: Text(
                                '沙画神还原《清明上河图》',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: GREY_MID,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
