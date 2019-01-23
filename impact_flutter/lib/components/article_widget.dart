import 'package:flutter/material.dart';
//constants
import 'package:impact_flutter/constant/constants_index.dart';
import 'package:impact_flutter/data/data_index.dart';

// mock data
class Article {
  final String title;
  final String lastModified;
  final String id;

  const Article({
    this.title,
    this.lastModified,
    this.id,
  });
}

// const articleItem = new Article(
//   title: 'The seventh article',
//   lastModified: '2018-08-25T16:30:46.166Z',
//   id: '5b81843ac0357512107f3629',
// );


class ArticleItem extends StatelessWidget {
  const ArticleItem(this.articleListItem, {Key key}) : super(key: key);

  final ArticleListItem articleListItem;

  @override
  Widget build(BuildContext context) {
      return new Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
            left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
            right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
            bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          ),
        ),
        padding: EdgeInsets.only(left: 0, top: 20, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              articleListItem.title,
              style: articleListTitle,
              textAlign: TextAlign.left,
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text(
                  articleListItem.lastModified
                ),
                new Text(
                  articleListItem.id
                )
              ],
            )
          ],
        ),
      );
    }
}