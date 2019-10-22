import 'package:flutter/material.dart';
import '../contants/theme.dart';

class SearchLikeButton extends StatelessWidget {
  final Function onTap;
  final String title;

  SearchLikeButton({this.onTap, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
        decoration: BoxDecoration(
          color: GREY_LIGHT,
          borderRadius: BorderRadius.circular(50),
        ),
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
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: GREY_MID,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
