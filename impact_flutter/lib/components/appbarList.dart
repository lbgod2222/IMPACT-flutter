import 'package:flutter/material.dart';

// 顶部导航元素内容
class AppbarItem {
  const AppbarItem({
    this.title,
    this.icon,
    this.routeLink
  });
  final String title;
  final IconData icon;
  final String routeLink;
}

const List<AppbarItem> appbarList = const <AppbarItem> [
  const AppbarItem(
    title: '文章',
    icon: Icons.vibration,
    routeLink: 'articles'
  ),
  const AppbarItem(
    title: 'Quicklad',
    icon: Icons.toc,
    routeLink: 'quicklads'
  ),
  const AppbarItem(
    title: 'Note',
    icon: Icons.note_add,
    routeLink: 'write'
  ),
];

// 构建itemUI wiedge, 因为引用了card组件，因此命名中也有card
// class ItmeCard extends StatelessWidget {
//   const ItmeCard({Key Key, this.appbarItem});

//   final AppbarItem appbarItem;

//   @override
//   Widget build(BuildContext context) {
//       return null;
//     }
// }