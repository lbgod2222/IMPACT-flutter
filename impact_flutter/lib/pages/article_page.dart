import 'package:flutter/material.dart';

import 'package:impact_flutter/constant/constants_index.dart';
import 'package:impact_flutter/data/data_index.dart';
import 'package:impact_flutter/components/components_index.dart';

class ArticlePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ArticlePageState();
  }
  const ArticlePage({Key key, this.routeId}) : super(key: key);

  final String routeId;

}
  // 这里用stateful组件是为了： 目前仅仅为了做style构建，在之后会采用bloC方案来分离事件/UI层，数据的管理统一交由顶层管理,再变成stateFul
class _ArticlePageState extends State<ArticlePage> {
  List<ArticleListItem>_articlesList = new List();
  @override
  void initState() {
    _articlesList.add(
      ArticleListItem('The seventh article', '2018-08-25T16:30:46.166Z', '5b81843ac0357512107f3629')
    );
    _articlesList.add(
      ArticleListItem('The eighth article', '2018-08-25T16:30:46.166Z', '5b81843ac0357512107f3629')
    );
  }

  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 0),
      child: new Container(
        child: new ListView.builder(
          itemCount: _articlesList.length,
          itemBuilder: (BuildContext context, int index) {
            ArticleListItem articleListItem = _articlesList[index];
            return ArticleItem(articleListItem);
          },
        ),
      ),
    );
  }
}