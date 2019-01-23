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
        padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
        child: Column(
          children: <Widget>[
            new Text(
              articleListItem.title,
              style: articleListTitle,
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