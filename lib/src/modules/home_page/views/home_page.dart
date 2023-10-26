import 'package:dummy_online_store/src/global_widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/best_seller_header_and_see_all_button.dart';
import 'components/best_seller_items/best_seller_items.dart';
import 'components/carousels.dart';
import 'components/categories/categories.dart';
import 'components/home_app_bar/home_app_bar.dart';
import 'components/page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Carousels(pageController),
            PageIndicator(pageController),
            Categories(),
            const BestSellerHeaderAndSeeAllButton(),
            BestSellerItems(),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
