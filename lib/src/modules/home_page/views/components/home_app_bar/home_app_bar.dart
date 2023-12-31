import 'package:flutter/material.dart';

import '../app_search_bar/app_search_bar.dart';
import 'cart_button.dart';
import 'home_app_bar_title.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  AppBar appBar([Color? color]) {
    return AppBar(
      centerTitle: false,
      backgroundColor: color,
      elevation: 0,
      title: const HomeAppBarTitle(),
      actions: const [CartButton()],
      bottom: const AppSearchBar(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return appBar(Theme.of(context).canvasColor);
  }

  @override
  Size get preferredSize => appBar().preferredSize;
}
